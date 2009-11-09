using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace FuTai.Component
{
    public enum UserAuthority
    {
        Web = 1,
        PlatnumCard = 2,
        DiamondCard = 3,
        VIP = 4
    }

    public class UserBll : BaseBll
    {
        public void Register(string email, string nickname, string password)
        {
            User user = new User()
                {
                    Email = email,
                    NickName = nickname,
                    Password = password,
                    Authority = (int)UserAuthority.Web,
                    LoginDate=DateTime.Now
                };

            using (var context = BaseBll.DataContext)
            {
                context.User.InsertOnSubmit(user);
                context.SubmitChanges();
            }

            SendActiveCode(user.UserId);
        }

        public void Register(string email, string passowrd, string passwordAnswer, string passwordQuestion,
            DateTime? birthDate, bool? sex, string userName, string nickName, string phone)
        {
            User user = new User()
            {
                Email = email,
                Password = passowrd,
                PasswordAnswer = passwordAnswer,
                PasswordQuestion = passwordQuestion,
                BirthDate = birthDate,
                Sex = sex,
                UserName = userName,
                NickName = nickName,
                Phone = phone,
                Authority = (int)UserAuthority.Web,
                LoginDate=DateTime.Now
            };

            using (var context = BaseBll.DataContext)
            {
                context.User.InsertOnSubmit(user);
                context.SubmitChanges();
            }

            SendActiveCode(user.UserId);
        }

        private void SendActiveCode(int? userId)
        {
            string activeCode = GenActiveCode(userId);

            var user = GetUser(userId);
            MailHelper.SendActiveMail(user.UserName, user.Email, activeCode);
        }

        public void ActiveUser(string userId, string activeCode)
        {
            //todo: 询问激活码有效期
        }

        public void ChangePassword(string userId, string oldPassword, string newPassword)
        { }

        public void RetrievePassword(int? userId)
        {//todo: 丢失密码的找回逻辑
            string newPassword = GenPassword(userId);

            var user = GetUser(userId);
            //MailHelper.SendForgotPasswordMail(user.UserName, user.Email, newPassword);
        }

        public void UpdateUserInfo(string userId)
        { }


        public User Login(string emailOrNickname, string password,string ip)
        {
            bool isEmailAccount = (emailOrNickname.IndexOf('@') >= 0);

            var q = from u in DataContext.User
                    where (isEmailAccount ? u.Email : u.NickName) == emailOrNickname && u.Password==password
                    select u;

            if (q.Count() > 0)
            {

                //todo:取消投票限制
                MakeLoginTime(isEmailAccount,emailOrNickname,ip);

                //todo:写入登录时间
                User nowuser = DataContext.User.First( e => (isEmailAccount?e.Email : e.NickName) ==emailOrNickname);
                nowuser.LoginDate = Convert.ToDateTime(DateTime.Now);
                DataContext.SubmitChanges();
                return q.Single();
            }


            return null;
        }

        public void MakeLoginTime(bool isEmail,string emailornick,string ip)
        {
            using (var datacontext = BaseBll.DataContext)
            {
                User nowuser = datacontext.User.First(e => (isEmail ? e.Email : e.NickName) == emailornick);
                if (nowuser.LoginDate.ToString("yy/MM/dd").CompareTo(DateTime.Now.ToString("yy/MM/dd")) != 0)
                { 
                    //清空所有投票限制记录
                    nowuser.Ticket = "";

                    ////BanCookie
                    //foreach (string key in HttpContext.Current.Request.Cookies.AllKeys)
                    //{
                    //    HttpCookie cookie = HttpContext.Current.Request.Cookies[key];
                    //    cookie.Expires = DateTime.MinValue;
                    //    HttpContext.Current.Response.Cookies.Add(cookie);
                    //}


                    //Clear IP
                    var r = from a in datacontext.IpAddress
                            where a.IP == ip
                            select a;

                    if (r.Count() > 0)
                    {
                        IpAddress ipaddress = datacontext.IpAddress.First(e => e.IP == ip);
                        //判断IP时间
                        if (ipaddress.LoginDate.ToString("yy/MM/dd").CompareTo(DateTime.Now.ToString("yy/MM/dd")) != 0)
                        {
                            ipaddress.Ticket = "";
                        }
                        ipaddress.LoginDate = Convert.ToDateTime(DateTime.Now);
                    }
                }

                nowuser.LoginDate = DateTime.Now;
                datacontext.SubmitChanges();
            }
        }

        #region Helper
        public static User GetUser(int? userId)
        {
            var qr = from u in DataContext.User
                     where u.UserId == userId
                     select u;
            var user = qr.Single();
            return user;
        }

        public static string GenActiveCode(int? userId)
        {
            return null;
        }

        public static string GenPassword(int? userId)
        {
            return null;
        }
        #endregion

        public bool CheckNicknameExists(string nickname)
        {
            var q = from u in DataContext.User
                    where u.NickName == nickname
                    select u;

            return (q.Count() != 0);
        }

        public bool CheckValidcode(string validcode)
        {
            return true;
        }

        public bool CheckEmailExists(string email)
        {
            var q = from u in DataContext.User
                    where u.Email == email
                    select u;

            return (q.Count() != 0);
        }
        public bool DBCheck(int uid, int tid)
        {
            User user = DataContext.User.First(d => d.UserId == uid);
            
            string ticketcol = user.Ticket;
            bool rvalue=true;
            if (ticketcol != null)
            {
                string[] ticketarr = ticketcol.Split(',');
                for (int i = 0; i < ticketarr.Length; i++)
                {
                    if (ticketarr[i] == tid.ToString())
                    {
                        rvalue = false;
                        break;
                    }
                }
            }

            return rvalue;
            //return !ticketcol.Contains(tid.ToString());
        }
        public bool CheckIP(string tid, string ip)
        {
            var q = from r in DataContext.IpAddress
                    where r.IP == ip
                    select r;
            List<IpAddress> ipcol = new List<IpAddress>();
            ipcol = q.ToList();
            
            bool rvalue = true;

            if (ipcol.Count != 0)
            {
                IpAddress Ipaddress = DataContext.IpAddress.First(i => i.IP == ip);

                string ticketcol = Ipaddress.Ticket;
                string[] ticketarr = ticketcol.Split(',');
                for (int a = 0; a < ticketarr.Length; a++)
                {
                    if (ticketarr[a] == tid)
                    {
                        rvalue = false;
                        break;
                    }
                }
            }

            return rvalue;
        }
    }
}

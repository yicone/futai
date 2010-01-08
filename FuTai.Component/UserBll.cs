using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Diagnostics;

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
        public User Register(string email, string nickname, string password)
        {
            User user = new User()
                {
                    Email = email,
                    NickName = nickname,
                    Password = password,
                    Authority = (int)UserAuthority.Web,
                    LoginDate = DateTime.Now
                };

            using (var context = BaseBll.DataContext)
            {
                context.User.InsertOnSubmit(user);
                context.SubmitChanges();
            }

            string activeCode = InsertActiveCode(user.UserId);
            MailHelper.SendActiveMail(user.UserName, user.Email, activeCode);

            return user;
        }

        public User Register(string email, string passowrd, string passwordAnswer, string passwordQuestion,
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
                LoginDate = DateTime.Now
            };

            using (var context = BaseBll.DataContext)
            {
                context.User.InsertOnSubmit(user);
                context.SubmitChanges();
            }

            string activeCode = InsertActiveCode(user.UserId);
            MailHelper.SendActiveMail(user.UserName, user.Email, activeCode);

            return user;
        }

        /// <summary>
        /// 产生激活码, 并发送激活邮件
        /// </summary>
        /// <param name="userId"></param>
        public string InsertActiveCode(int userId)
        {
            string activeCode = MakePassword(16, "an", userId);

            RegisterCode code = new RegisterCode() 
            {
                UserId = userId,
                RegisterCode1 = activeCode,
                CreateDate = DateTime.Now
            };

            using (var context = BaseBll.DataContext)
            {
                context.RegisterCode.InsertOnSubmit(code);
                context.SubmitChanges();
            }

            return activeCode;
        }

        public ActivateRegistrationResult ValidateActivatation(string activationCode, out User user)
        {
            user = null;
            int lenUserId = int.Parse(activationCode[activationCode.Length - 1].ToString());

            int id = int.Parse(activationCode.Substring(5, lenUserId));

            using (var context = BaseBll.DataContext)
            {
                var u = from i in context.User
                        where i.UserId == id
                        select i;

                if (u == null)
                {
                    return ActivateRegistrationResult.UserNotExist;
                }
                
                user = u.SingleOrDefault();

                var a = from r in context.RegisterCode
                        where r.UserId == id 
                            && r.RegisterCode1 == activationCode
                        select r;

                if (a.Count() > 0)
                {
                    var codeRecordList = a.ToList();
                    bool success = codeRecordList.Exists(c => c.CreateDate > DateTime.Now.AddHours(-Config.ActivateHourLimit));
                    return (success) ? ActivateRegistrationResult.Success : ActivateRegistrationResult.Timeout;
                }
            }
            return ActivateRegistrationResult.Failure;
        }

        public void ActivateRegistration(User user)
        {
            using (var context = BaseBll.DataContext)
            {
                context.User.Attach(user);
                user.UserName = "123";
                user.HasActivated = true;
                context.SubmitChanges();
            }
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

        public User ManageLogin(string username, string password)
        {
            var q = from u in DataContext.User
                    where (u.NickName == username && u.Password == password)
                    select u;

            if (q.Count() > 0)
            {
                return q.Single();
            }
            return null;

        }
        public User Login(string emailOrNickname, string password, string ip)
        {
            bool isEmailAccount = (emailOrNickname.IndexOf('@') >= 0);

            IQueryable<User> q;
            if (isEmailAccount)
            {
                q = from u in DataContext.User
                    where u.Email == emailOrNickname
                            && u.Password == password
                            && u.HasActivated == true
                    select u;
            }
            else
            {
                q = from u in DataContext.User
                    where u.NickName == emailOrNickname
                            && u.Password == password
                            && u.HasActivated == true
                    select u;
            }

            if (q.Count() > 0)
            {

                //todo:取消投票限制
                MakeLoginTime(isEmailAccount, emailOrNickname, ip);

                //todo:写入登录时间
                User nowuser = DataContext.User.First(e => (isEmailAccount ? e.Email : e.NickName) == emailOrNickname);
                nowuser.LoginDate = Convert.ToDateTime(DateTime.Now);
                DataContext.SubmitChanges();
                return q.Single();
            }


            return null;
        }

        public void MakeLoginTime(bool isEmail, string emailornick, string ip)
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
            bool rvalue = true;
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

        private string MakePassword(int pwdLen, string type, int userId)
        {
            char[] arrUserId = userId.ToString().ToCharArray();
            string pwd = MakePassword(pwdLen, type);
            char[] arrPwd = pwd.ToCharArray();
            int lenUserId = arrUserId.Length;

            for (int i = 0; i < lenUserId; i++)
            {
                int index = 5 + i;
                arrPwd[index] = arrUserId[i];
            }

            arrPwd[pwdLen - 1] = char.Parse(lenUserId.ToString());

            pwd = new string(arrPwd);
            return pwd;
        }

        /// <summary>  
        /// 产生随机码  
        /// http://blog.csdn.net/xxzsky/archive/2009/10/12/4658279.aspx
        /// </summary>  
        /// <param name="pwdLen">产生多少位码</param>  
        /// <param name="type">随机码类型(u大写,l小写,a大小写混合,n数字,un大写+数字,ln小写+数字,an大小写混合+数字)</param>  
        /// <returns></returns>  
        private string MakePassword(int pwdLen, string type)
        {
            string randomNumStr = "123456789";
            string randomStr = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";
            Random rnd = new Random();
            string strPwd = string.Empty;
            for (int i = 0; i < pwdLen; i++)
            {
                switch (type.ToLower())
                {
                    //产生大写随机码  
                    case "u":
                        //strPwd += Convert.ToString((char)rnd.Next(65, 91));  
                        strPwd += randomStr[rnd.Next(26, 52)].ToString();
                        break;
                    //产生小写随机码  
                    case "l":
                        strPwd += randomStr[rnd.Next(26)].ToString();
                        break;
                    //产生大小写随机码  
                    case "a":
                        strPwd += randomStr[rnd.Next(52)].ToString();
                        break;
                    //产生数字写随机码  
                    case "n":
                        strPwd += randomNumStr[rnd.Next(randomNumStr.Length)].ToString();
                        break;
                    //产生大写+数字随机码  
                    case "un":
                        strPwd += rnd.Next(2) == 1 ? randomStr[rnd.Next(26, 52)].ToString() : randomNumStr[rnd.Next(randomNumStr.Length)].ToString();
                        break;
                    //产生小写+数字随机码  
                    case "ln":
                        strPwd += rnd.Next(2) == 1 ? randomStr[rnd.Next(26)].ToString() : randomNumStr[rnd.Next(randomNumStr.Length)].ToString();
                        break;
                    //产生大小写+数字随机码  
                    case "an":
                        strPwd += rnd.Next(2) == 1 ? randomStr[rnd.Next(52)].ToString() : randomNumStr[rnd.Next(randomNumStr.Length)].ToString();
                        break;

                }
            }

            return strPwd;
        }

        public enum ActivateRegistrationResult
        {
            Success,
            UserNotExist,
            Timeout,
            Failure
        }
    }
}

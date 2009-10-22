using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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
                    Authority = (int)UserAuthority.Web
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
                Authority = (int)UserAuthority.Web
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


        public User Login(string emailOrNickname, string password)
        {
            bool isEmailAccount = (emailOrNickname.IndexOf('@') >= 0);

            var q = from u in DataContext.User
                    where (isEmailAccount ? u.Email : u.NickName) == emailOrNickname
                    select u;

            if (q.Count() > 0)
            {
                return q.Single();
            }

            return null;
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

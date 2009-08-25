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
            try
            {
                User user = new User()
                    {
                        Email = email,
                        NickName = nickname,
                        Password = password,
                        Authority = (int)UserAuthority.Web
                    };

                DataContext.User.InsertOnSubmit(user);
                DataContext.SubmitChanges();

                SendActiveCode(user.UserId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
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


        public void Login(string emailOrNickname, string password)
        {
            bool isEmailAccount = (emailOrNickname.IndexOf('@') >= 0);

            if (isEmailAccount)
            {

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

        public object CheckValidcode(string validcode)
        {
            return true;
        }
    }
}

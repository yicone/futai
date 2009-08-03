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
        public void Register(int? userId, string email, string password)
        {
            User user = new User()
            {
                UserId = userId,
                Email = email,
                Password = password,
                Authority = (int)UserAuthority.Web
            };

            DataContext.Users.InsertOnSubmit(user);

            SendActiveCode(userId);
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


        public void Login(string userId, string password)
        {
 
        }
        

        #region Helper
        public static User GetUser(int? userId)
        {
            var qr = from u in DataContext.Users
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
    }
}

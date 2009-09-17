using System;
using AjaxPro;
using FuTai.Component;
using System.Web;

namespace FuTai.Web
{
    [AjaxNamespace("BaseAjax")]
    public partial class LoginRegister : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
        }

        protected override void OnError(EventArgs e)
        {
            var ex = Server.GetLastError();
            LogHelper.LogException(ex);
            Server.Transfer(PageUrl.ErrorPage);
        }

        [AjaxMethod]
        public static void Register(string email, string nickname, string password)
        {
            Singleton<UserBll>.Instance.Register(email, nickname, password);
        }

        [AjaxMethod]
        public static bool Login(string emailOrNickname, string password)
        {
            User user = Singleton<UserBll>.Instance.Login(emailOrNickname, password);
            if (user != null)
            {
                HttpContext.Current.Session["CurrentUser"] = user;
                return true;
            }

            return false;
        }

        [AjaxMethod]
        public static bool CheckNicknameExists(string nickname)
        {
            bool exists = Singleton<UserBll>.Instance.CheckNicknameExists(nickname);
            return exists;
        }

        [AjaxMethod]
        public static bool CheckValidcode(string validcode)
        {
            var valid = Singleton<UserBll>.Instance.CheckValidcode(validcode);
            return valid;
        }

        [AjaxMethod]
        public static bool CheckEmailExists(string email)
        {
            var exists = Singleton<UserBll>.Instance.CheckEmailExists(email);
            return exists;
        }

        [AjaxMethod]
        public User GetLoginUser()
        {
            if (Session != null && Session["CurrentUser"] != null)
            {
                return (User)Session["CurrentUser"];
            }

            return null;
        }

        [AjaxMethod]
        public void Logout()
        {
            if (Session != null && Session["CurrentUser"] != null)
            {
                Session["CurrentUser"] = null;
            }
        }
    }
}

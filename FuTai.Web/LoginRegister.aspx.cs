using System;
using AjaxPro;
using FuTai.Component;

namespace FuTai.Web
{
    [AjaxNamespace("MyAjax")]
    public partial class LoginRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
        }

        [AjaxMethod]
        public static void Register(string email, string nickname, string password)
        {
            Singleton<UserBll>.Instance.Register(email, nickname, password);
        }

        [AjaxMethod]
        public static void Login(string emailOrNickname, string password)
        {
            Singleton<UserBll>.Instance.Login(emailOrNickname, password);
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
            return false;
        }
    }
}

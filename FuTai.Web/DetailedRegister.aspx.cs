using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using FuTai.Component;
using AjaxPro;

namespace FuTai.Web
{
    [AjaxNamespace("BaseAjax")]
    public partial class DetailedRegister : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(DetailedRegister));
        }

        [AjaxPro.AjaxMethod]
        public void Register(string email, string passowrd, string passwordAnswer, string passwordQuestion,
            DateTime? birthDate, bool? sex, string trueName, string nickName, string phone)
        {
            Singleton<UserBll>.Instance.Register(email, passowrd, passwordAnswer, passwordQuestion,
                birthDate, sex, trueName, nickName,phone);
        }


        [AjaxMethod]
        public static bool CheckEmailExists(string email)
        {
            var exists = Singleton<UserBll>.Instance.CheckEmailExists(email);
            return exists;
        }

        [AjaxMethod]
        public static bool CheckNicknameExists(string nickname)
        {
            bool exists = Singleton<UserBll>.Instance.CheckNicknameExists(nickname);
            return exists;
        }

        [AjaxMethod]
        public static bool Login(string emailOrNickname, string password)
        {
            string Ip = HttpContext.Current.Request.UserHostAddress;
            User user = Singleton<UserBll>.Instance.Login(emailOrNickname, password, Ip);
            if (user != null)
            {
                HttpContext.Current.Session["CurrentUser"] = user;
                return true;
            }

            return false;
        }
    }
}

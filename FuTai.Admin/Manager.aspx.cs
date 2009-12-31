using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using AjaxPro;
using FuTai.Component;

namespace FuTai.Admin
{
    [AjaxNamespace("ManageAjax")]
    public partial class Manager : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(Manager));
        }

        [AjaxMethod]
        public static bool Login(string name, string pass)
        {
            User user = Singleton<UserBll>.Instance.ManageLogin(name, pass);
            if (user != null && user.Authority == 5)
            {
                HttpContext.Current.Session["Admin"] = user;
                return true;
            }
            else
                return false;
        }
    }
}

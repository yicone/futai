using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using FuTai.Component;
using AjaxPro;

namespace FuTai.Web
{
    [AjaxNamespace("BaseAjax")]
    public class BasePage : Page
    {
        protected override void OnLoad(EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(this.GetType());

            base.OnLoad(e);
        }

        protected override void OnError(EventArgs e)
        { 
            var ex = Server.GetLastError();     
            LogHelper.LogException(ex);
            Server.Transfer(PageUrl.ErrorPage);
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

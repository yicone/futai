using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using AjaxPro;
using FuTai.Component;

namespace FuTai.Admin
{
    [AjaxNamespace("ManageAjax")]
    public class BasePage:Page
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
        public void LogOut()
        {
            HttpContext.Current.Session["Admin"] = null;
        }

        [AjaxMethod]
        public string GetName()
        {
            User user = (User)HttpContext.Current.Session["Admin"];
            if (user == null)
                return null;
            else
                return user.NickName;
        }
    }
}

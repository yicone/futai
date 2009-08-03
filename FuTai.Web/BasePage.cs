using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using FuTai.Component;

namespace FuTai.Web
{
    public class BasePage : Page
    {
        protected override void OnError(EventArgs e)
        { 
            var ex = Server.GetLastError();
            LogHelper.LogException(ex);
            Server.Transfer(PageUrl.ErrorPage);
        }
    }
}

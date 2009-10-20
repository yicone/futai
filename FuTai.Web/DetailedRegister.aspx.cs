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
        public void Register(string email, string passowrd, string passwordAnswer,
            DateTime? birthDate, bool? sex, string trueName, string nickName, string phone)
        {
            Singleton<UserBll>.Instance.Register(email, passowrd, passwordAnswer,
                birthDate, sex, trueName, nickName,phone);
        }
    }
}

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

namespace FuTai.Web.NewIntro
{
    public partial class NewExperience : BasePage
    {
        public string Kword;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                ShowPanel(Request.QueryString["type"]);
            }
        }
        private void ShowPanel(string type)
        {
            switch (type)
            { 
                case "Contact":
                    Kword = "联系我们";
                    Pa_Contact.Visible =true;
                    break;
                case "VIP":
                    Kword = "会员制度";
                    Pa_VIP.Visible = true;
                    break;
                case "Pay":
                    Kword = "关于支付";
                    Pa_Pay.Visible = true;
                    break;
                case "Help":
                    Kword = "帮助中心";
                    Pa_Help.Visible = true;
                    break;
                case "Promise":
                    Kword = "百年承诺";
                    Pa_Promise.Visible = true;
                    break;
                default:
                    Kword = "联系我们";
                    Pa_Contact.Visible = true;
                    break;
            }
        }
    }
}

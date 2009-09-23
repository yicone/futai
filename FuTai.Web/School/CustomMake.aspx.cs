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

namespace FuTai.Web.School
{
    public partial class CustomMake : System.Web.UI.Page
    {
        public string TypeWord;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                MakePanel(Request.QueryString["type"]);
            }
        }
        private void MakePanel(string type)
        {
            switch (type)
            { 
                case "Custom":
                    TypeWord = "来料定制";
                    Custom.Visible = true;
                    break;
                case "CustomImg":
                    TypeWord = "来图定制";
                    CustomImg.Visible = true;
                    break;
                case "ReAlive":
                    TypeWord = "涣然重生";
                    ReAlive.Visible = true;
                    break;
                case "OldNew":
                    TypeWord = "旧貌新颜";
                    OldNew.Visible = true;
                    break;
                default:
                    TypeWord = "来料定制";
                    Custom.Visible = true;
                    break;
            }
        }
    }
}

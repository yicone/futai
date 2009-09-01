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

namespace FuTai.Web.PayMent
{
    public partial class InfoDesposite : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                string type = Request["type"];
                if (type!=null)
                    ShowPage(type);
            }
        }
        private void ShowPage(string tp)
        {
            switch (tp)
            { 
                case "yuding":
                    ShowPanel(1);
                    break;
                default:
                    break;
            }
        }
        private void ShowPanel(int id)
        {
            if (id == 1)
            {
                ph_AddAddress.Visible = true;
                ph_FillAddress.Visible = false;
            }
        }
    }
}

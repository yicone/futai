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
using System.Data.SqlClient;
using AjaxPro;

namespace FuTai.Web.CustomBuy
{
    public partial class CustomBuy : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                string Type = Request["productType"];
                if (Type == "Diamond")
                {
                    ShowPanel(1);
                }
            }
        }
        public void Link_Start(object sender, EventArgs e)
        {
            ShowPanel(1);
        }
        public void ChangeType(object sender, EventArgs e)
        {
            ShowPanel(2);
        }
        public void ChangeType2(object sender, EventArgs e)
        {
            ShowPanel(4);
        }
        protected void ShowPanel(int id)
        {
            switch (id)
            {
                case 1:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = true;
                    Ph_SecondSub.Visible = false;
                    break;
                case 2:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = true;
                    Ph_SecondSub.Visible = false;
                    break;
                case 3:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = false;
                    Ph_SecondSub.Visible = false;
                    break;
                case 4:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = false;
                    Ph_SecondSub.Visible = true;
                    break;
                default:
                    break;
            }
        }
    }
}

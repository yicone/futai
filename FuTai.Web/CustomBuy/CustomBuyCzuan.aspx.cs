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

namespace FuTai.Web.CustomBuy
{
    public partial class CustomBuy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string proid = Request["proid"];
                if (proid != null)
                {
                    ShowPanel(3);
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
        protected void ShowPanel(int id)
        {
            switch (id)
            {
                case 1:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = false;
                    Ph_SecondSub.Visible = true;
                    Ph_Pinfo.Visible = false;
                    break;
                case 2:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = true;
                    Ph_SecondSub.Visible = false;
                    Ph_Pinfo.Visible = false;
                    break;
                case 3:
                    Ph_First.Visible = false;
                    Ph_Second.Visible = false;
                    Ph_SecondSub.Visible = false;
                    Ph_Pinfo.Visible = true;
                    break;
                default:
                    break;
            }
        }
    }
}

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

namespace FuTai.Web.CustomBuy
{
    public partial class CustomBuyCzt : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
            string Type = Request["product"];
            this.MakePage(Type);
        }
        private void MakePage(string type)
        {
            switch (type)
            { 
                case "Combine":   //产品组合
                    ShowPanel(2);
                    break;
                default:         //选择钻托
                    break;
            }
        }
        public void Info_Show(object s, EventArgs e)
        {
            ShowPanel(1);
        }
        protected void ShowPanel(int id)
        {
            switch (id)
            {
                case 1:
                    Ph_Ctf.Visible = false;
                    Ph_CyBuy.Visible = false;
                    break;
                case 2:
                    Ph_Ctf.Visible = false;
                    Ph_CyBuy.Visible = true;
                    break;
                default:
                    break;
            }
        }
        public void Pro_Pay(object sender, EventArgs e)
        {
            Response.Redirect("/PayMent/Login.aspx");
        }
        public void btn_ClickPay(object sender, EventArgs e)
        {
            Response.Redirect("CustomPay.aspx?DiamondRing=10249");
        }
    }
}

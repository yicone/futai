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
    public partial class CustomPay : System.Web.UI.Page
    {
        protected string ZuanTuo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string zuantuo = Request.QueryString["DiamondRing"];
                this.ZuanTuo = zuantuo;
            }
        }
    }
}

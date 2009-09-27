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

namespace FuTai.Web
{
    public partial class ProductInfo : BasePage
    {
        public string ProductId;
        public string PairId;
        public string TotalPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(SearchHandler));
            if (!IsPostBack)
            {
                ProductId = Request["proid"];
                PairId = Request["pairid"];
                TotalPrice = Request["total"];
            }
        }
    }
}

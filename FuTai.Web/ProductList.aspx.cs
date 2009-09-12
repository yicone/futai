using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxPro;
using FuTai.Component;

namespace FuTai.Web
{
    public partial class ProductList : BasePage
    {
        protected string ProductType { get; set; }

        protected string Price1 { get; set; }

        protected string Price2 { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(SearchHandler));

                string productType = Request.QueryString["productType"];        
                this.ProductType = productType;

                var price1 = Request.QueryString["price1"];
                var price2 = Request.QueryString["price2"];

                decimal price;
                this.Price1 = decimal.TryParse(price1, out price) ? price1 : "";
                this.Price2 = decimal.TryParse(price2, out price) ? price2 : "";
            }
        }
    }
}

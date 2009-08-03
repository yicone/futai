using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxPro;

namespace FuTai.Web
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected string ProductType { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(SearchHandler));

                string productType = Request.QueryString["productType"];
                this.ProductType = productType;
            }
        }
    }
}

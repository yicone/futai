using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FuTai.Component.Template
{
    public partial class RegisterConfirmMailControl : System.Web.UI.UserControl
    {
        public string ActiveCode { get; set; }
        public string Date { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
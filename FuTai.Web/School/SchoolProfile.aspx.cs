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
    public partial class SchoolProfile : System.Web.UI.Page
    {
        private string keyword;
        public string KeyWord
        {
            get;
            set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                keyword = Request.QueryString["fileid"];
                this.KeyWord = keyword;
            }
        }
    }
}

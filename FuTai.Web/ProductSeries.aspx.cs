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
    public partial class ProductSeries : System.Web.UI.Page
    {
        private string _series;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                _series = Request.QueryString["Series"];
                _series=_series==null?"ZhiAi":_series;
                SetPage(_series);
            }
        }
        public string Series
        {
            get {
                return _series;
            }
            set
            {
                _series = value;
            }
        }
        private void SetPage(string type)
        {
            switch (type)
            {
                case "ZhiAi":
                    this._series = "挚爱系列";
                    ShowPanel(1);
                    break;
                case "LiAi":
                    this._series = "礼爱系列";
                    ShowPanel(2);
                    break;
                case "ShangWu":
                    this._series = "商务系列";
                    ShowPanel(3);
                    break;
                default: 
                    this._series = "挚爱系列";
                    ShowPanel(1);
                    break;
            }
        }
        private void ShowPanel(int i)
        {
            switch (i)
            { 
                case 1:
                    ph_ShangWu.Visible = false;
                    ph_LiAi.Visible = false;
                    ph_ZhiAi.Visible = true;
                    break;
                case 2:
                    ph_ShangWu.Visible = false;
                    ph_LiAi.Visible = true;
                    ph_ZhiAi.Visible = false;
                    break;
                case 3:
                    ph_ShangWu.Visible = true;
                    ph_LiAi.Visible = false;
                    ph_ZhiAi.Visible = false;
                    break;
                default:
                    break;
            }
        }
    }
}

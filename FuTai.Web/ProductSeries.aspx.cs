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
        private string _maintype;
        private string _subtype;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                _maintype = Request.QueryString["maintype"];
                _maintype = _maintype == null ? "ZhiAi" : _maintype;
                SetPage(_maintype);
            }
        }
        public string MainType
        {
            get {
                return _maintype;
            }
            set
            {
                _maintype = value;
            }
        }
        public string SubType
        {
            get
            {
                return _subtype;
            }
            set
            {
                _subtype = value;
            }
        }
        private void SetPage(string type)
        {
            switch (type)
            {
                case "Rlove":
                    this._maintype = "挚爱系列";
                    this._subtype = null;
                    break;
                case "Plove":
                    this._maintype = "礼爱系列";
                    this._subtype = null;
                    break;
                case "Slove":
                    this._maintype = "商务系列";
                    this._subtype = null;
                    break;
                case "Widd":
                    this._maintype = "结婚系列";
                    SetSubType(this._subtype);
                    break;
                case "Fashion":
                    this._maintype = "时尚系列";
                    SetSubType(this._subtype);
                    break;
                case "Wrap":
                    this._maintype = "套装系列";
                    SetSubType(this._subtype);
                    break;
                default:
                    this._maintype = "挚爱系列";
                    this._subtype = null;
                    break;
            }
        }
        private void SetSubType(string type)
        {
            switch(type)
            {
                case "DiamondRing":
                    this._subtype = "钻戒";
                    break;
                case "WiddRing":
                    this._subtype = "婚戒";
                    break;
                case "LoverRing":
                    this._subtype = "情侣戒";
                    break;
                case "GoldRing":
                    this._subtype = "结婚金戒";
                    break;
                case "FashionDiamond":
                    this._subtype = "时尚钻饰系列";
                    break;
                case "FashionJewel":
                    this._subtype = "时尚珠宝系列";
                    break;
                case "DiamondSer":
                    this._subtype = "钻石套系";
                    break;
                case "BaoDiamondSer":
                    this._subtype = "宝石套系";
                    break;
                default:
                    this._subtype = null;
                    break;
            }
        }
    }
}

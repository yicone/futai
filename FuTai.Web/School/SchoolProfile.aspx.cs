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

namespace FuTai.Web.School
{
    public partial class SchoolProfile : BasePage
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
                AjaxPro.Utility.RegisterTypeForAjax(typeof(LoginRegister));
                keyword = Request.QueryString["field"];
                ShowPanel(keyword);
            }
        }
        private void ShowPanel(string kword)
        {
            switch (kword)
            { 
                case "zhuanshi":
                    this.KeyWord = "钻石";
                    Diamond.Visible = true;
                    break;
                case "feicui":
                    this.KeyWord = "翡翠";
                    FeiCui.Visible = true;
                    break;
                case "ZhenZhu":
                    this.KeyWord = "珍珠";
                    ZhenZhu.Visible = true;
                    break;
                case "ColorfulJewel":
                    this.KeyWord = "有色宝石";
                    ColorfulJewel.Visible = true;
                    break;
                case "Gold":
                    this.KeyWord = "素金";
                    Gold.Visible = true;
                    break;
                case "Player":
                    this.KeyWord = "首饰选择和佩戴";
                    FeiCui.Visible = true;
                    break;
                default:
                    this.KeyWord = "钻石";
                    Diamond.Visible = true;
                    break;
            }
        }
    }
}

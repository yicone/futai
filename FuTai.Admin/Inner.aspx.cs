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
using FuTai.Component;

namespace FuTai.Admin
{
    [AjaxNamespace("ManageAjax")]
    public partial class Inner : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(Inner));
        }

        [AjaxMethod]
        public object GetOrder(string mtype)
        {
            var result = Singleton<OrderBll>.Instance.SearchOrder(mtype);
            return result;
        }

        [AjaxMethod]
        public void Tack(int id,bool tick)
        {
            Singleton<OrderBll>.Instance.TackOrder(id,tick);
        }

        [AjaxMethod]
        public void DelTack(int id)
        {
            Singleton<OrderBll>.Instance.DelTack(id);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxPro;
using FuTai.Component;
using System.Collections;

namespace FuTai.Web.CustomBuy
{
    [AjaxNamespace("BaseAjax")]
    public partial class CarList : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(CarList));
            string DingInfo = Request.QueryString["action"];
            ArrayList Car = (ArrayList)Session["CarList"];
            if (DingInfo != null && DingInfo == "MakeTicket" && Car!=null && Car.Count>0)
            {
                User nowuser=(User)Session["CurrentUser"];
                if (nowuser == null)
                {
                    Response.Redirect("/LoginRegister.aspx?type=make");
                    return;
                }
                MakeTicket.Visible = true;
                Step.Visible = false;
                button3.Visible=false;
            }
        }

        [AjaxMethod]
        public static void MakeOrder(string name, bool sex, string phone, string scity, string city, string address, string mailcode, string speical)
        {
            User user = (User)HttpContext.Current.Session["CurrentUser"];
            Singleton<OrderBll>.Instance.MakeOrder(name, sex, phone, scity, city, address, mailcode, speical, user.Email, user.NickName);

        }

        [AjaxMethod]
        public static void ClearCar()
        {
            HttpContext.Current.Session["CarList"] = null;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FuTai.Component;
using System.Diagnostics;

namespace FuTai.Web
{
    public partial class Activate : System.Web.UI.Page
    {
        protected string RegisterCode
        {
            get 
            {
                string registerCode = (this.Request.QueryString["id"] != null) ? 
                    this.Request.QueryString["id"].ToString() : null;
                return registerCode;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.RegisterCode != null)
            {
                User user;
                var result = Singleton<UserBll>.Instance.ValidateActivatation(this.RegisterCode, out user);
                if (result == UserBll.ActivateRegistrationResult.Success)
                {
                    Debug.Assert(user != null);
                    Singleton<UserBll>.Instance.ActivateRegistration(user);
                    Response.Redirect("/Registration/ActivateFailure.aspx");
                }
                else
                {
                    if (user != null)
                    {
                        // todo: 重新发送生成激活码并发送激活邮件
                    }
                    else
                    {
                        Response.Redirect("/Registration/ActivateSuccess.aspx");
                    }
                }
            }
        }
    }
}

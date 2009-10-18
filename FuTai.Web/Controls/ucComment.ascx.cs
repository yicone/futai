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

namespace FuTai.Web.Controls
{
    [AjaxNamespace("Comment")]
    public partial class ucComment : System.Web.UI.UserControl
    {
        public string ProductId;

        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(Captcha));
            AjaxPro.Utility.RegisterTypeForAjax(this.GetType());

            if (!IsPostBack)
            {
                ProductId = Request["proid"];
            }
        }

        [AjaxMethod]
        public void Insert(string title, string content, string productId)
        {
            // todo: 增加安全性

            var user = HttpContext.Current.Session["CurrentUser"] as User;
            if(user == null)
            {
                throw new Exception("未登录用户不能发表评论");
            }

            Singleton<CommentBll>.Instance.Insert(title, content, productId, user.UserId, user.NickName);
        }

        [AjaxMethod]
        public object GetCommentList(string productId)
        {
            return Singleton<CommentBll>.Instance.GetCommentList(productId, CommentBll.CommentAuditStatus.QueueAndPass);
        }
    }
}
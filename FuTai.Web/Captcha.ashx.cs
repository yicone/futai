using System;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Web.SessionState;
using System.Drawing;
using AjaxPro;

namespace FuTai.Web
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [AjaxNamespace("Captcha")]
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class Captcha : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            Refresh();
        }

        [AjaxMethod]
        public bool Validate(string input)
        {
            return (input != null && 
                input.Equals(HttpContext.Current.Session["CheckCode"].ToString(), StringComparison.OrdinalIgnoreCase));
        }

        public void Refresh()
        {
            string checkCode = CreateRandomCode(4);
            HttpContext.Current.Session["CheckCode"] = checkCode;
            byte[] image = CreateImage(checkCode);

            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.ContentType = "image/Jpeg";
            HttpContext.Current.Response.BinaryWrite(image);
        }

        private string CreateRandomCode(int codeCount)
        {
            string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,X,Y,Z";
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;

            Random rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(35);
                if (temp == t)
                {
                    return CreateRandomCode(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        private byte[] CreateImage(string checkCode)
        {
            int iwidth = (int)(checkCode.Length * 11.5);
            System.Drawing.Bitmap image = new System.Drawing.Bitmap(iwidth, 20);
            Graphics g = Graphics.FromImage(image);
            Font f = new System.Drawing.Font("Arial", 10, System.Drawing.FontStyle.Bold);
            Brush b = new System.Drawing.SolidBrush(Color.White);
            //g.FillRectangle(new System.Drawing.SolidBrush(Color.Blue),0,0,image.Width, image.Height);
            g.Clear(Color.Blue);
            g.DrawString(checkCode, f, b, 3, 3);

            //Pen blackPen = new Pen(Color.Black, 0);
            //Random rand = new Random();
            //for (int i = 0; i < 5; i++)
            //{
            //    int y = rand.Next(image.Height);
            //    g.DrawLine(blackPen, 0, y, image.Width, y);
            //}

            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            byte[] content = ms.ToArray();
            g.Dispose();
            image.Dispose();

            return content;
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}

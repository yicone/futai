using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.IO;
using System.Web;

namespace FuTai.Component
{
    public class ViewManager<T> where T : UserControl
    {
        private Page m_pageHolder;

        public T LoadViewControl(string path)
        {
            this.m_pageHolder = new Page();
            return (T)this.m_pageHolder.LoadControl(path);
        }

        public string RenderView(T control)
        {
            StringWriter output = new StringWriter();

            this.m_pageHolder.Controls.Add(control);
            HttpContext.Current.Server.Execute(this.m_pageHolder, output, false);

            return output.ToString();
        }

    }
}

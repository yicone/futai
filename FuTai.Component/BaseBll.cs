using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace FuTai.Component
{
    public class BaseBll
    {
        private static FuTaiDBDataContext s_dataContext;

        public static FuTaiDBDataContext DataContext
        {
            get { return BaseBll.s_dataContext; }
            set { BaseBll.s_dataContext = value; }
        }

        static BaseBll()
        {
            string connStr = ConfigurationManager.ConnectionStrings["FuTaiConnectionString"].ConnectionString;
            s_dataContext = new FuTaiDBDataContext(connStr);
        }
    }
}

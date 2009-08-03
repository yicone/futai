using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace FuTai.Component
{
    public class BaseBll
    {
        private static FuTaiDataContext s_dataContext;

        public static FuTaiDataContext DataContext
        {
            get { return BaseBll.s_dataContext; }
            set { BaseBll.s_dataContext = value; }
        }

        static BaseBll()
        { 
            string connStr = ConfigurationManager.ConnectionStrings[0].ConnectionString;
            s_dataContext = new FuTaiDataContext(connStr);
        }
    }
}

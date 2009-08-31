using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using System.Configuration;

namespace FuTai.Component
{
    public class FuTaiDBDataContextFactory
    {
        public static FuTaiDBDataContext GetFuTaiDBContext()
        {
            string connStr = ConfigurationManager.ConnectionStrings["FuTaiConnectionString"].ConnectionString;
            FuTaiDBDataContext dataContext = new FuTaiDBDataContext(connStr);

            return dataContext;
        }
    }
}

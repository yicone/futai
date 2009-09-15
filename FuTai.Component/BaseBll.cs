using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace FuTai.Component
{
    public class BaseBll
    {
        public static FuTaiDBDataContext DataContext
        {
            get { return FuTaiDBDataContextFactory.GetFuTaiDBContext(); }
        }
    }
}

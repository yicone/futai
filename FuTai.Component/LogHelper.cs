using log4net;
using System.Text;
using System;
using System.Web;

namespace FuTai.Component
{
    public class LogHelper
    {
        private static ILog s_logger = null;

        static LogHelper()
        {
            s_logger = log4net.LogManager.GetLogger("Logger");
        }

        public static ILog Logger
        {
            get { return s_logger; }
        }

        public static void Register()
        {
            log4net.Config.XmlConfigurator.Configure();
        }

        public static void LogException(Exception exception)
        {
            var requestUrl = "";
            requestUrl = HttpContext.Current.Request.Url.ToString();
            var clientIP = "";
            clientIP = IPHelper.GetClientIP();

            StringBuilder sb = new StringBuilder();
            sb.AppendLine();
            sb.AppendLine("1. 目标机器：" + Environment.MachineName);
            sb.AppendLine("2. 请求地址：" + requestUrl);
            sb.AppendLine("3. 客户端IP：" + clientIP);
            sb.AppendLine();
            sb.AppendFormat("4. Exception Message: {0}", exception.Message);
            sb.AppendLine();
            sb.AppendFormat("5. TargetSite: {0}", exception.TargetSite.ToString());
            sb.AppendLine();
            sb.AppendFormat("6. StackTrace: {0}", exception.StackTrace);

            Logger.Error("\r\n" + sb.ToString(), exception);
        }
    }
}

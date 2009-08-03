using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace FuTai.Component
{
    public class IPHelper
    {
        public static string GetClientIP()
        {
            string ip;
            HttpRequest request = HttpContext.Current.Request;
            if (request.ServerVariables["HTTP_X_FORWARDED_FOR"] != "")
            {
                ip = request.ServerVariables["REMOTE_ADDR"];
            }
            else
            {
                //穿过代理获得真实IP
                ip = request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            }
            if (!string.IsNullOrEmpty(ip))
            {
                return ip;
            }

            return request.UserHostAddress;
        }
    }
}

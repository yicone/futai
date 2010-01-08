using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace FuTai.Component
{
    public class Config
    {
        public static double ActivateHourLimit
        {
            get
            {   
                double limit = 12;  // 12为默认值
                string str = ConfigurationManager.AppSettings["ActivateHourLimit"];
                if (str != null)
                {
                    double.TryParse(str, out limit);
                }
                return limit;
            }
        }

        // todo: 缓存
        public static SmtpClient SmtpClient
        {
            get
            {
                SmtpClient smtpClient = new SmtpClient();
                string settings = ConfigurationManager.AppSettings["EmailServer"];
                string[] arr = settings.Split(':');
                smtpClient.Host = arr[0];
                int port;
                if (arr.Length >= 2)
                {
                    if (int.TryParse(arr[1], out port))
                    {
                        smtpClient.Port = port;
                    }
                }

                if (arr.Length >= 3)
                {
                    if (arr[2].ToString() == "1")
                    {
                        smtpClient.EnableSsl = true;
                    }
                }

                string emailAccount = ConfigurationManager.AppSettings["EmailAccount"];
                string[] arrAccount = emailAccount.Split('|');
                string email = arrAccount[0];
                string password = arrAccount[1];

                smtpClient.Credentials = new NetworkCredential(email, password);

                return smtpClient;
            }
        }
    }
}

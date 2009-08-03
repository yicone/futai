using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FuTai.Component
{
    public class MailHelper
    {
        public static void SendActiveMail(string userName, string email, string activeCode)
        {
            string content = string.Format("您好, {0}: /r/n 您的激活码是 {1}", userName, activeCode);
            Send("欢迎注册福泰珠宝网站", content, "admin@futai.com", email);
        }

        //public static void SendForgotPasswordMail(string userName, string email, string newPassword)
        //{
        //    string content = string.Format("您好, {0}: /r/n 您的新密码是 {1}", userName, newPassword);
        //    Send("下次别这么粗心了", content, "admin@futai.com", email);
        //}

        private static void GroupSend(string subject, string content, string from, List<string> toList)
        { }

        private static void Send(string subject, string content, string from, string to)
        { }
    }
}

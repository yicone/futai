using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FuTai.Component.Template;
using System.Net.Mail;
using System.Net;

namespace FuTai.Component
{
    public class MailHelper
    {
        public static void SendActiveMail(string userName, string email, string activeCode)
        {
            //string content = string.Format("您好, {0}: /r/n 您的激活码是 {1}", userName, activeCode);

            ViewManager<RegisterConfirmMailControl> viewManager = new ViewManager<RegisterConfirmMailControl>();
            RegisterConfirmMailControl control = viewManager.LoadViewControl("~/bin/Template/RegisterConfirmMailControl.ascx");
            control.ActiveCode = activeCode;
            control.Date = DateTime.Today.ToShortDateString();

            string subject = string.Format("亲爱的{0},请您确认在福泰珠宝的注册", userName);
            string content = viewManager.RenderView(control);

            Send(subject, content, "admin@futaizhubao.com", email);
        }

        //public static void SendForgotPasswordMail(string userName, string email, string newPassword)
        //{
        //    string content = string.Format("您好, {0}: /r/n 您的新密码是 {1}", userName, newPassword);
        //    Send("下次别这么粗心了", content, "admin@futai.com", email);
        //}

        private static void GroupSend(string subject, string content, string from, List<string> toList)
        {
 
        }

        private static void Send(string subject, string content, string from, string to)
        {
            var mail = new MailMessage();
            mail.From = new MailAddress(from, "福泰珠宝") ;
            mail.To.Add(new MailAddress(to));
            mail.Subject = subject;
            mail.IsBodyHtml = true;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.Body = content;

            SmtpClient client = Config.SmtpClient;
            client.Send(mail);
        }
    }
}

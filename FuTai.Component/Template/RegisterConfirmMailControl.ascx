<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisterConfirmMailControl.ascx.cs"
    Inherits="FuTai.Component.Template.RegisterConfirmMailControl" %>
<div class="ii gt" id=":53">
    您好，请点击下面的链接进行用户注册确认：<br />
    <a target="_blank" href="http://localhost:3017/registration/activate.aspx?id=<%= this.ActiveCode %>">
        http://localhost:3017/<wbr />registration/activate.aspx?<wbr />id=<wbr /><%= this.ActiveCode %></a><br />
    <br />
    <br />
    <a target="_blank" href="http://www.futaizhubao.com">福泰珠宝</a><br />
    <%= this.Date %><br />
    <br />
    <br />
    如果您无法点击上方链接，你也可以通过粘贴（或者键入）<wbr />地址到您的浏览器地址栏中<br />
</div>

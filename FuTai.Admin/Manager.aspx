<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="FuTai.Admin.Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>福泰珠宝</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/script/jquery-1.3.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#Login").click(function() {
                var $uname = $("#username").val();
                var $upass = $("#userpass").val();
                if ($uname == "" || $uname == null || $upass == "" || $upass == null) {
                    alert("请输入用户名和密码！");
                    return false;
                }
                var r = ManageAjax.Login($uname, $upass);
                if (!r.error) {
                    if (r.value) {
                        location = '/Inner.aspx';
                    }
                    else
                        alert("用户名或密码错误！");
                }
                else
                    alert(r.error.Message);
            });
            $("#userpass").keydown(function(e) {
                if (e.keyCode == 13) {
                    $("#Login").click();
                }
            });
        });
    </script>
<style>
	body{ background:url(images/mainbg.jpg) #bb9f6a repeat-x;}
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="Wrap">
	<div class="LoginForm">
    	<p>用户名</p>
        <p><input name="username" id="username" type="text" class="biglogin" maxlength="20" /></p>
    	<p>密码</p>
        <p><input name="userpass" id="userpass" type="password" class="biglogin" maxlength="20" /></p>
        <p style="text-align:right; padding-top:15px; padding-right:9px"><input name="" id="Login" type="button" class="LoginB" value="登录"></p>
    </div>
</div>
    </form>
</body>
</html>

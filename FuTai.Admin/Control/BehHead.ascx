<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BehHead.ascx.cs" Inherits="FuTai.Admin.Control.behindhead" %>
<script type="text/javascript">
    $(document).ready(function() {
        var r = ManageAjax.GetName();
        if (!r.error) {
            if (r.value != "" && r.value != null)
                $("#MName").html(r.value);
            else {
                alert("请重新登录！");
                location = "/Manager.aspx";
            }
        }
        else
            alert(r.error.Message);
    });
    function logout() {
        ManageAjax.LogOut();
        location = "/Manager.aspx";
    }
</script>
<div class="top">
    <div class="logo">
        <p style="text-align:right; padding-right:20px; font-size:12px; color:white; padding-top:30px">欢迎您，管理员<strong id="MName" style="color:#ccc"></strong> &nbsp; <a href="javascript:logout()" style="font-size:12px">退出</a></p>
    </div>
</div>
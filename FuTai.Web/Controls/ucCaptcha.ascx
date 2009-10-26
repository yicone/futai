<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCaptcha.ascx.cs" Inherits="FuTai.Web.Controls.ucCaptcha" %>

<script type="text/javascript">
    $(document).ready(function(){
        
    });
    
    function Captchar_refresh(){
        $captchar = $('#captchar');
        var rdn = Math.random();
        $captchar.attr('src', '/Captcha.ashx?' + rdn);
    }
</script>

<img id="captchar" style="border-width:0px;" src="/Captcha.ashx" align="absmiddle" alt="看不清, 换一张" />  
<a href="javascript:void(0);" onclick="javascript:Captchar_refresh();" >看不清, 换一张</a>
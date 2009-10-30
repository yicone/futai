<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="HighLevelProduct.aspx.cs" Inherits="FuTai.Web.HighLevelProduct" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function SwitchPro(id,obj)
    {
        $("#JinProduct li").each(function(){
            this.className="";
        });
        obj.blur();
        obj.parentNode.className="now";
        $("#JinProList div").each(function(){
            if ($(this).attr("id")!=id)
                $(this).hide(); 
            else
            {
                $("#"+id).css("display","block");
            }
        });
    }
</script>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
<uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
      <div class="SiteMap">
         <p><a href="/Default.aspx">首页</a> > 福泰精品</p>
      </div>
      <img src="../images/product_ad1.jpg" width="782" height="109" />
      <div class="hr"></div>
      <div class="box1">
        <h2><span>福泰畅销精品：</span></h2>
        <div class="cont classic_cont">
          <div class="div1">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="../images/classic_dataimg1.gif" width="220" height="241" /></td>
              </tr>
              <tr>
                <td height="79" align="center"><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                  <span class="breakfont">市场报价: ￥2039 </span><br />
                  <span class="redfont1">福泰实价: ￥930 </span></td>
              </tr>
            </table>
          </div>
          <div class="div2">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="40%" height="135" valign="top"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td width="60%" valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
              <tr>
                <td height="145" valign="top"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
              <tr>
                <td height="135" valign="top"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="hr"></div>
      <div id="JinProList" class="box1">
        <h2>
            <ul id="JinProduct" class="tabSelect2">
            	<li class="now"><a onclick="SwitchPro('Diaomd',this)" href="javascript:void(0)">钻　 戒</a></li>
                <li><a onclick="SwitchPro('Lovers',this)" href="javascript:void(0)">情侣对戒</a></li>
                <li><a onclick="SwitchPro('DiaoZuan',this)" href="javascript:void(0)">吊坠项链</a></li>
                <li><a onclick="SwitchPro('Ear',this)" href="javascript:void(0)">耳钉耳环</a></li>
                <li><a onclick="SwitchPro('HandOrg',this)" href="javascript:void(0)">手链手镯</a></li>
            </ul>
        <span>福泰畅销精品：</span></h2>
        <div id="Diaomd" class="cont classic_bg2">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25%" height="215" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
            </tr>
          </table>
        </div>
        <div id="Lovers" class="cont classic_bg2" style="display:none">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25%" height="215" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">QLPT900lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
            </tr>
          </table>
        </div>
        <div id="DiaoZuan" class="cont classic_bg2" style="display:none">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25%" height="215" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">DZXL －lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
            </tr>
          </table>
        </div>
        <div id="Ear" class="cont classic_bg2" style="display:none">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25%" height="215" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">EAR －lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
            </tr>
          </table>
        </div>
        <div id="HandOrg" class="cont classic_bg2" style="display:none">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25%" height="215" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">EAR2 PT900－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
              <td width="25%" align="center"><p><img src="../images/classic_dataimg3.jpg" width="140" height="140" /></p>
              <p><a href="#">PT900钻石戒指－lovemrak </a><br />
                <span class="breakfont">市场报价: ￥2039 </span><br />
              <span class="redfont1">福泰实价: ￥930 </span></p></td>
            </tr>
          </table>
        </div>
        
        
      </div>
    </div>
    
    <div class="clearfix"></div>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphTemplate" runat="server" ID="Content3">

</asp:Content>
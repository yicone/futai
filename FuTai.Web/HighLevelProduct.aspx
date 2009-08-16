<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="HighLevelProduct.aspx.cs" Inherits="FuTai.Web.HighLevelProduct" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
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
                <td><img src="../images/classic_dataimg1.jpg" width="202" height="247" /></td>
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
                <td width="40%" height="135"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td width="60%" valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
              <tr>
                <td height="145"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
              <tr>
                <td height="135"><img src="../images/classic_dataimg2.jpg" width="100" height="100" /></td>
                <td valign="top"><p><a href="#">G750白金钻石吊坠－梦幻蝶舞 </a><br />
                    <span class="breakfont">市场报价: ￥2039 </span><br />
                    <span class="redfont1">福泰实价: ￥930</span></p></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="hr"></div>
      <div class="box1">
        <h2>
        	<ul class="tabSelect2">
            	<li class="now"><a href="#">钻　 戒</a></li>
                <li><a href="#">情侣对戒</a></li>
                <li><a href="#">吊坠项链</a></li>
                <li><a href="#">耳钉耳环</a></li>
                <li><a href="#">手链手镯</a></li>
            </ul>
        <span>福泰畅销精品：</span></h2>
        <div class="cont">
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
      </div>
    </div>
    <div class="clearfix"></div>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphTemplate" runat="server" ID="Content3">

</asp:Content>
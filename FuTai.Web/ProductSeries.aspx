<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="ProductSeries.aspx.cs" Inherits="FuTai.Web.ProductSeries" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
        <div class="SiteMap">
          <p><a href="#">首页</a> > <%=Series %></p>
        </div>
        <img src="../images/product_ad1.jpg" width="782" height="109" />
        <div class="hr"></div>
        <asp:PlaceHolder ID="ph_ShangWu" runat="server" Visible="false">
        <div class="box1">
          <h2><span>商务系列：</span></h2>
          <div class="cont series_miancont">
            <p><strong>送给你心爱的人最好的礼物</strong><br />
              特别的日子： <span class="redfont1">展会</span> • 纪念日 • 生日 • 派对 • 沙龙 • 外宾<br />
            最亲爱的人： <span class="redfont1">送给客户</span> • 给员工 • 给领导 • 其他身份 • 全部 </p>
          <div class="inner_hr"></div>
          <div  class="series_left">
          <ul class="PageSelect">
            <li>1/50</li>
            <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
            <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
          </ul>
          <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
          <div class="clearfix"></div>
<ul class="inner_list1">
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
</ul>
          <div class="clearfix"></div>
           <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="textfield" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
               <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
               <div class="clearfix"></div>
          </div>
          <div class="series_right">
       	  <div class="box1 series_cont">
            	<h2><span>最受欢迎的礼品</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="49%"><img src="../images/series1_dataimg.jpg" /></td>
                      <td width="51%">× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
                        　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
                      <span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
          	<div class="box1 series_cont2">
          	  <h2><span>分类礼品推荐</span></h2>
          	  <div class="cont"><img src="../images/series_ad1.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad2.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad3.jpg" width="210" height="108" /></div>
       	    </div>
          </div>
          <div class="clearfix"></div>
          </div>
        </div>   
     </asp:PlaceHolder>
     <asp:PlaceHolder ID="ph_ZhiAi" runat="server" Visible="false">
        <div class="box1">
          <h2><span>挚爱系列：</span></h2>
          <div class="cont series_miancont">
            <p><strong>送给你心爱的人最好的礼物</strong><br />
              特别的日子：<span class="redfont1"> 生日礼物</span> • 求婚 • 结婚 • 周年纪念 • 情人节 • 婚庆纪念<br />
            最亲爱的人： <span class="redfont1">送给她</span> • 送给他 • 犒赏自己 • 全部</p>
          <div class="inner_hr"></div>
          <div  class="series_left">
          <ul class="PageSelect">
            <li>1/50</li>
            <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
            <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
          </ul>
          <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
          <div class="clearfix"></div>
<ul class="inner_list1">
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
</ul>
          <div class="clearfix"></div>
           <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="text1" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
               <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
               <div class="clearfix"></div>
          </div>
          <div class="series_right">
       	  <div class="box1 series_cont">
            	<h2><span>最受欢迎的礼品</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="49%"><img src="../images/series1_dataimg.jpg" /></td>
                      <td width="51%">× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
                        　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
                      <span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
          	<div class="box1 series_cont2">
          	  <h2><span>分类礼品推荐</span></h2>
          	  <div class="cont"><img src="../images/series_ad1.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad2.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad3.jpg" width="210" height="108" /></div>
       	    </div>
          </div>
          <div class="clearfix"></div>
          </div>
        </div>
     </asp:PlaceHolder>
     <asp:PlaceHolder ID="ph_LiAi" runat="server" Visible="false">
        <div class="box1">
          <h2><span>礼爱系列：</span></h2>
          <div class="cont series_miancont">
            <p><strong>送给你心爱的人最好的礼物</strong><br />
            特别的日子： <span class="redfont1">生日礼物</span> • 母亲节 • 纪念日<br />
          最亲爱的人：<span class="redfont1"> 送给她</span> • 送给他 • 母亲 • 父亲 • 女儿 • 宝贝 • 好朋友 • 亲戚 • 犒赏自己 • 全部 </p>
          <div class="inner_hr"></div>
          <div  class="series_left">
          <ul class="PageSelect">
            <li>1/50</li>
            <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
            <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
          </ul>
          <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
          <div class="clearfix"></div>
<ul class="inner_list1">
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
      <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
  <li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
    <p><a href="#">G750彩金钻石吊坠<br />
      妙不可言 </a><br />
  <span class="redfont1">福泰实价: ￥1130 </span></p>
    </li>
</ul>
          <div class="clearfix"></div>
           <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="text2" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
               <p class="itemNum">共有 <span class="redfont1">160</span> 件</p>
               <div class="clearfix"></div>
          </div>
          <div class="series_right">
       	  <div class="box1 series_cont">
            	<h2><span>最受欢迎的礼品</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="49%"><img src="../images/series1_dataimg.jpg" /></td>
                      <td width="51%">× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
                        　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
                      <span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                    <tr>
                      <td><img src="../images/series1_dataimg.jpg" /></td>
                      <td>× 恋爱季节 ×<br />
　 此款G750白金钻石小花戒指，群镶7颗钻石，经典爪镶，钻石闪耀璀璨。 <br />
<span class="redfont1">福泰实价: ￥ 2190</span></td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
          	<div class="box1 series_cont2">
          	  <h2><span>分类礼品推荐</span></h2>
          	  <div class="cont"><img src="../images/series_ad1.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad2.jpg" width="210" height="108" />
              <div class="hr"></div>
              <img src="../images/series_ad3.jpg" width="210" height="108" /></div>
       	    </div>
          </div>
          <div class="clearfix"></div>
          </div>
        </div>
     </asp:PlaceHolder>
      </div>
    	<div class="clearfix"></div>
        <div class="hr"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphTemplate" ID="Content3" runat="server">
</asp:Content>
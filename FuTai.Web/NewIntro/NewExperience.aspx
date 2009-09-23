<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewExperience.aspx.cs" MasterPageFile="~/SiteMaster.Master" Inherits="FuTai.Web.NewIntro.NewExperience" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
<link href="../style/inner.css" rel="stylesheet" type="text/css" />
<link href="../style/forum.css" rel="stylesheet" type="text/css" />
<link href="../style/experience.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<uc1:ucLeft ID="ucLeft3" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="/Default.aspx">首页</a> > 联系我们</p>
        </div>
        <div class="box1">
          <h2><span>我的帐户：</span></h2>
          <div class="cont myaccount_cont" style="padding-left:30px; padding-right:30px">
          	<div class="experience_left">
                <div class="experience_shop">
                    <img src="../images/experience_shop.jpg" />
                    <p><strong>地    址</strong>：南京东路步行街409号置地广场921室</p>
                </div>
                <div class="hr"></div>
                <div class="experience_map">
                    <img src="../images/experience_map.jpg" />
                </div>
            </div>
            <div class="experience_right">
            	<div class="experience_intro">
                	<img src="../images/experience_intro.jpg" />
                    <p>上海体验中心是国内最早的钻石
体验中心，也是国内最成熟的体验中
心。优质的钻石和钻饰、专业贴心的
服务，齐全的钻石查看仪器让您享受
到尊贵的钻石体验。</p>
                </div>
                <div class="hr"></div>
                <div class="experience_add">
                	<ul>
                    	<li>置地广场旗舰店 </li>
<li><strong>地    址：</strong>南京东路步行街
  409号置地广场921室</li>
<li><strong>邮    编：</strong></li>
<li><strong>电    话：</strong></li>
<li><strong>营业时间：</strong></li>
<li><strong>交    通：</strong> 公交集散点换乘方式</li>

<li><strong>免费咨询电话：</strong></li>

<li><strong>客服邮箱：</strong></li>

<li><strong>在线客服：</strong> 可以直接点击在线客服进行交
  流或者增加客服MSN、QQ，得
  到您所需要的帮助。</li>
 
</li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">

</asp:Content>
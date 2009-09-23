<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="School.aspx.cs" Inherits="FuTai.Web.School.School" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="/Default.aspx">首页</a> > 福泰学院</p>
        </div>
        <div class="school_left">
        <div class="box1">
          <h2><span>钻石：</span></h2>
          <div class="cont school_detail">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
              <tr>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 钻石的含义及历史             </a><br />
                </strong></td>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 钻石的4C             </a></strong></td>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 证书</a></strong></td>
              </tr>
              <tr>
                <td><a href="/School/SchoolProfile.aspx?field=zhuanshi"><strong>&gt; 钻石的形成</strong>（开采，打磨） </a></td>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 钻石的肉眼鉴定</a></strong></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 钻石的保养</a></strong></td>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 彩钻</a></strong></td>
                <td><strong><a href="/School/SchoolProfile.aspx?field=zhuanshi">&gt; 异型钻</a></strong></td>
              </tr>
            </table>
          </div>
        </div>
          <div class="box1">
            <h2><span>翡翠：</span></h2>
            <div class="cont school_cont1">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=feicui">&gt; 翡翠的矿物组成 </a><br />
                  </strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=feicui">&gt; 翡翠的特性：</a></strong><a href="#">结构；颜色、光泽</a></td>
                </tr>
                <tr>
                  <td><a href="/School/SchoolProfile.aspx?field=feicui"><strong>&gt; 鉴别</strong>（翠性、颜色、光泽、ABC货）</a></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=feicui">&gt; 相似玉石的鉴别</a></strong></td>
                </tr>
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=feicui">&gt; 翡翠的保养</a></strong></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
            </div>
          </div>
          <div class="box1">
            <h2><span>珍珠：</span></h2>
            <div class="cont school_cont1">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=ZhenZhu">&gt; 简介</a><br />
                  </strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=ZhenZhu">&gt; 珍珠的结构</a></strong></td>
                </tr>
                <tr>
                  <td colspan="2"><strong><a href="/School/SchoolProfile.aspx?field=ZhenZhu">&gt; 平直鉴别：颜色、光泽  天然、养殖鉴别</a></strong></td>
                </tr>
                <tr>
                  <td colspan="2"><strong><a href="/School/SchoolProfile.aspx?field=ZhenZhu">&gt; 珍珠质量评价分级</a></strong><a href="#">（颜色、大小、形状、光泽） </a></td>
                </tr>
                <tr>
                  <td colspan="2"><strong><a href="/School/SchoolProfile.aspx?field=ZhenZhu">&gt; 珍珠的保养</a></strong></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="box1">
            <h2><span>有色宝石：</span></h2>
            <div class="cont school_cont1">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=ColorfulJewel">&gt; 红蓝宝石简介</a><br />
                  </strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=ColorfulJewel"> &gt; 红蓝宝的品质分级        </a></strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=ColorfulJewel">&gt; 红蓝宝的产地</a></strong></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="box1">
            <h2><span>素金：</span></h2>
            <div class="cont school_cont1">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=Gold">&gt; 红蓝宝石简介</a><br />
                  </strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=Gold"> &gt; 红蓝宝的品质分级 </a></strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=Gold">&gt; 红蓝宝的产地</a></strong></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="box1">
            <h2><span>首饰选择和佩带：</span></h2>
            <div class="cont school_cont1">
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="DeTb">
                <tr>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=Player">&gt; 分类</a><br />
                  </strong></td>
                  <td><strong><a href="/School/SchoolProfile.aspx?field=Player"> &gt; 保养 </a></strong></td>
                </tr>
              </table>
            </div>
          </div>
        </div>
        <div class="school_right">
        <div class="box1">
          <h2><span>证书解读：</span></h2>
          <div class="cont school_cont2">
          	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40%" align="center"><img src="../images/school_dataimg4.jpg" width="79" height="50" /></td>
    <td width="60%">GIA钻石等级证书是世界<br />
      第一的宝石证书,由美国<br />
      宝石学院(GIA)签订发行</td>
  </tr>
</table>
<div class="inner_hr3"></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40%" align="center"><img src="../images/school_dataimg4.jpg" width="79" height="50" /></td>
    <td width="60%">GIA钻石等级证书是世界<br />
      第一的宝石证书,由美国<br />
      宝石学院(GIA)签订发行</td>
  </tr>
</table>
<div class="inner_hr3"></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40%" align="center"><img src="../images/school_dataimg4.jpg" width="79" height="50" /></td>
    <td width="60%">GIA钻石等级证书是世界<br />
      第一的宝石证书,由美国<br />
      宝石学院(GIA)签订发行</td>
    </tr>
</table>
          </div>
        </div>
        <div class="school_box">
        	<div class="cont">
        	<h4>真爱之钻</h4>
            <p>当她们说女人最爱钻石时,我一点都
不以为然,可当你为我戴上这一枚永恒之
戒时,我才知道原来爱是多么需要表达,
也需要用一种永 恒的、纯净的幸物来守
候,所以我想每个相爱 的人,每个有爱的
人,都应该选一枚属于自已的钻饰来表达
你的爱....</p>
</div>
        </div>
        </div>
        <div class="clearfix"></div>
      </div>
  
<div class="clearfix"></div>

</div>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphTemplate" runat="server" ID="Content3">
</asp:Content>
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="MyAccount.aspx.cs" Inherits="FuTai.Web.Account.MyAccount" %>
<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
<uc1:ucLeft ID="ucLeft" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="#">首页</a> > 我的帐户</p>
        </div>
        <div class="box1">
          <h2><span>我的帐户：</span></h2>
          <div class="cont myaccount_cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>欢迎您：<strong class="redfont1">chinglee</strong></td>
                <td>消息：未读消息(<span class="redfont1"><strong>0</strong></span>)； </td>
                <td>待处理订单(<span class="redfont1"><strong>0</strong></span>) </td>
                <td>您当前级别：会员 (会员升级)</td>
              </tr>
              <tr>
                <td>帐户总积分：0        </td>
                <td>完成订单：0 <br /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>本年内消
                  
                费：¥0 </td>
                <td>总消费额：¥0 </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
            <div class="inner_hr"></div>
<p>您还没有 验证邮箱 / 验证手机， 验证手机/邮箱信息获得更多积分和优惠! </p>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="myaccount_table1">
              <tr>
                <th colspan="6">购物车</th>
              </tr>
              <tr>
                <td align="center">类型</td>
                <td align="center"> 图片</td>
                <td align="center"> 详细</td>
                <td align="center"> 价格</td>
                <td align="center"> 加入日期</td>
                <td align="center"> 操作 </td>
              </tr>
              <tr>
                <td colspan="6" align="right">总价：¥0&nbsp;
<label>
                  <input type="submit" name="button2" id="button2" value=" 结算 " class="btn1Style" />
&nbsp;&nbsp; </label></td>
              </tr>
            </table>
            <div class="inner_hr0"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="myaccount_table1">
              <tr>
                <th colspan="7">我的订单</th>
              </tr>
              <tr>
                <td align="center">订单编号</td>
                <td align="center">下单时间</td>
                <td align="center">收货人</td>
                <td align="center">总价</td>
                <td align="center">支付方式</td>
                <td align="center">状态</td>
                <td align="center">操作 </td>
              </tr>
              <tr>
                <td colspan="7" align="right"><label>
                  <input type="submit" name="button3" id="button3" value=" 更多 " class="btn1Style" />
                &nbsp;&nbsp; </label></td>
              </tr>
            </table>
            <div class="inner_hr0"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="myaccount_table1">
              <tr>
                <th colspan="7">我的礼品订单</th>
              </tr>
              <tr>
                <td align="center">订单编号</td>
                <td align="center">下单时间</td>
                <td align="center">收货人</td>
                <td align="center">总价</td>
                <td align="center">支付方式</td>
                <td align="center">状态</td>
                <td align="center">操作 </td>
              </tr>
              <tr>
                <td colspan="7" align="right"><label>
                <input type="submit" name="button4" id="button4" value=" 更多 " class="btn1Style" />
                    &nbsp;&nbsp; </label></td>
              </tr>
            </table>
            <div class="inner_hr0"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="myaccount_table2">
              <tr>
                <th colspan="3">您可能感兴趣的商品</th>
              </tr>
              <tr>
                <td width="33%" align="center"><p><img src="../images/myaccount_img.jpg" width="135" height="100" /></p>
                <p><a href="#">今生今世</a></p></td>
                <td width="33%" align="center" class="vhr"><p><img src="../images/myaccount_img.jpg" width="135" height="100" /></p>
                <p><a href="#">今生今世</a></p></td>
                <td width="33%" align="center" class="vhr"><p><img src="../images/myaccount_img.jpg" width="135" height="100" /></p>
                <p><a href="#">今生今世</a></p></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    	<div class="clearfix"></div>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphTemplate" runat="server" ID="Content3">

</asp:Content>
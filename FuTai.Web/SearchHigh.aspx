<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchHigh.aspx.cs" Inherits="FuTai.Web.SearchHigh" MasterPageFile="~/SiteMaster.Master" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
<link href="/style/custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/searchtemplates.js"></script>

    <script type="text/javascript">

        $(document).ready(function(){
            var ClassVal=$("#sel_ProductClass").val();
            SerHigh.InitClass(ClassVal);
        });
       
    </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
        <div class="hr"></div>
        <p align="center">如您需要我们为您提供服务，请拨打24小时免费客服电话：40088 10025     或者点击在线客服进行咨询，更精确查询请点击这里。</p>
        <div class="hr"></div>
        <div class="box1">
          <h2><span>高级搜索：</span></h2>
          <div class="cont">
            <div class="NewSerBar">
            <ul>
                <li>商品分类： <select name="select" id="sel_ProductClass">
                    <option value="none" selected>请选择 </option>
                    </select> <span id="HighBar"></span> 商品价格：  <select name="select" id="sel_Price">
                    <option selected>所有价格 </option>
                    <option price1="0" price2="30000">0-30000 </option>
                    <option price1="30000" price2="100000">30000-100000 </option>
                    <option price1="100000" price2="200000">100000-200000 </option>
                    <option price1="200000" price2="300000">200000-300000 </option>
                    <option price1="300000" price2="450000">300000-450000 </option>
                    <option price1="450000" price2="550000">450000-550000 </option>
                  </select></li>
                <li class="Go"><input type="button" class="btn1Style" name="button2" id="Go" value=" GO" onclick="SerHigh.Go(true)" /></li>
            </ul>
            <div class="clearfix"></div>
            </div>
            <ul class="PageSelect">
              <li id="PageS"></li>
              <li><a href="javascript:SerHigh.ShowPage('pre')"><img src="../images/pageselect_left.gif" /></a></li>
              <li><a href="javascript:SerHigh.ShowPage('next')"><img src="../images/pageselect_next.gif" /></a></li>
              <li>
                <input name="textfield" type="text" class="input1" id="pageSi" maxlength="3" size="2" />
              </li>
              <li><a href="javascript:SerHigh.ShowPage('custom')"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
            <p style="line-height:40px;">更新日期：2009-6-25</p>
               <div id="LoadForm" style="padding-top:120px; position:static; padding-bottom:250px">
                	<img src="../Images/loadinfo_net.gif" />
    				<div id="Loading">加载中</div>
               </div>
             <div id="ResultTb"></div>
          </div>
        </div>
      </div>
    	<div class="clearfix"></div>
        <div class="hr"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphTemplate" ID="Content3" runat="server">
</asp:Content>

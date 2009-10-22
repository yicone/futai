<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HandShow.aspx.cs" MasterPageFile="~/SiteMaster.Master" Inherits="FuTai.Web.HandShow.HandShow" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server" >
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link href="/style/inner.css" rel="stylesheet" type="text/css" />
    <link href="/style/forum.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/Cookie.js"></script>
    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>
    <script type="text/javascript">
        var _productList;
        var _pageNo = 1;
        var _pageCount = 0;
        var _pageSize = 9;
        var top3;
        $(document).ready(function() {
            _productList = searchhandshow();
            renderTemplate('handshow-list', { 'showList': _productList, 'pageBegin': 0, 'pageSize': _pageSize});
            _pageCount=parseInt(_productList.length/_pageSize)<1?1:Math.ceil(_productList.length/_pageSize);
            $("#count1").html(_pageNo+"/"+_pageCount);
            $("#count2").html(_pageNo+"/"+_pageCount);
            $("#procount1").html(_productList.length);
            $("#procount2").html(_productList.length);
            renderTemplate('top3-list', { 'topList': _productList, 'pageBegin': 0, 'pageSize': 3});
    });
        function showpage(next)
        {
            if (next)
            {
                if (_pageNo<_pageCount)
                {
                    _pageNo+=1;
                    var pageBegin=(_pageNo-1)*_pageSize;
                    renderTemplate('handshow-list', { 'showList': _productList, 'pageBegin': pageBegin, 'pageSize': _pageSize});
                }
                else
                    alert("当前为最后页");
            }
            else
            {
                if (_pageNo>1)
                {
                    _pageNo-=1;
                    var pageBegin=(_pageNo-1)*_pageSize;
                    renderTemplate('handshow-list', { 'showList': _productList, 'pageBegin': pageBegin, 'pageSize': _pageSize});
                }
                else
                    alert("当前已经是为第一页");
            }
        }
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server" >
<uc1:ucLeft ID="ucLeft1" runat="server" />
    <div class="inner_main">
        <div class="SiteMap">
          <p><a href="/Default.aspx">首页</a> > 真手绣</p>
        </div>
        <div class="box1">
          <h2><span><strong>真手绣</strong>：</span></h2>
          <div class="cont" style="padding-left:30px; padding-right:30px">
          	<div class="handshow_left">
            	<p class="handshow_left_num">共有 <span class="redfont1" id="procount1">160</span> 件</p>
          	  <ul class="PageSelect">
          	    <li id="count1">1/50</li>
          	    <li><a href="javascript:showpage()"><img src="../images/pageselect_left.gif" /></a></li>
          	    <li><a href="javascript:showpage(true)"><img src="../images/pageselect_next.gif" /></a></li>
       	      </ul>
              <div class="clearfix"></div>
          	  <div id="handshow-list">
          	    <!--模板ING-->
          	  </div>
          	   <p class="handshow_left_num">共有 <span class="redfont1" id="procount2">160</span> 件</p>
              <ul class="PageSelect">
          	    <li id="count2">1/50</li>
          	    <li><a href="javascript:showpage()"><img src="../images/pageselect_left.gif" /></a></li>
          	    <li><a href="javascript:showpage(true)"><img src="../images/pageselect_next.gif" /></a></li>
       	      </ul>
              <div class="clearfix"></div>
            </div>
            <div class="handshow_right">
           	  <div class="box1">
               	<h2><span><strong>真手秀排行榜</strong>：</span></h2>
               	<div id="top3-list">
                    <!--模板ING--->
                  </div>
                </div>
                <div class="hr"></div>
              <div class="box1">
               	<h2><span><strong>分类礼品推荐</strong>：</span></h2>
                <ul class="handshow_ad">
                	<li><img src="../images/handshow_pic3.jpg" /></li>
                    <li><img src="../images/handshow_pic4.jpg" /></li>
                    <li><img src="../images/handshow_pic5.jpg" /></li>
                </ul>
                </div>
            </div>
            <div class="clearfix"></div>
          </div></div></div>
          <div class="clearfix"></div>
       <div class="hr"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server" >
    <textarea id="handshow-list-template" style="display: none">
        <ul class="inner_list1">
            {#foreach $T.showList as record begin=$T.pageBegin count=$T.pageSize}
          	    <li><img src="../images/{$T.record.Src}.jpg" /> <a href="javascript:void(0)" onclick="window.open('../images/{$T.record.Src}.jpg','','width=700,height=467'); return false"><img src="../images/icon_fdj.gif" class="fdjbtn" /></a>
          	      <p>姓名：{$T.record.UserName}<br />
          	      购买日期：{$T.record.BuyDate.getYear()+"-"+($T.record.BuyDate.getMonth()+1)+"-"+$T.record.BuyDate.getDate()}<br />
                  当前票数：<span class="redfont1" id="ticket{$T.record.HandShowId}">{$T.record.Ticket}票</span><br />
       	          <a href="javascript:maketicket({$T.record.HandShowId},'ticket{$T.record.HandShowId}')" class="buybtn">我要投票</a></p>
       	        </li>
       	     {#/for}
       	      </ul>
       	      <div class="clearfix"></div>
    </textarea>
    <textarea id="top3-list-template" style="display:none">
        <ul class="handshow_list">
          {#foreach $T.topList as record begin=$T.pageBegin count=$T.pageSize}
       	  <li><img src="../images/handshow_pic2.jpg" />
        	<p>姓名：{$T.record.UserName}<br />
        	 购买日期：<br />{$T.record.BuyDate.toLocaleDateString().replace("年","-").replace("月","-").replace("日","")}<br />
       	     当前票数：<span class="redfont1">{$T.record.Ticket}票</span>
            </p><div class="clearfix"></div>
            </li>
          {#/for}
      </ul>
    </textarea>
</asp:Content>
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
        var _pageSize = 10;
        var top3;
        $(document).ready(function() {
            $("body").append('<div id="top3-list" class="online_zsxlist"></div>');
            var TopHeight=150;
            $(window).scroll(function(){
                var $target=$("#top3-list");
                $target.css("top",document.documentElement.scrollTop+TopHeight+"px");
            });
            
            
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
          </div></div></div>
          <div class="clearfix"></div>
       <div class="hr"></div>     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server" >
    <textarea id="handshow-list-template" style="display: none">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="inner_list1_zxs">
            <tr>
            {#foreach $T.showList as record begin=$T.pageBegin count=$T.pageSize}
                <td width="50%"><div class="left"><a href="#" onClick="window.open('../images/{$T.record.Src}.jpg','','width=700,height=467'); return false"><img src="../images/{$T.record.Src}.gif" /></a></div><div class="right">
                  <p style="line-height:30px"><strong>昵称：</strong>{$T.record.UserName}<br />
                  <span class="fupiaoTitle"><strong>祝福指数：</strong></span><br />
                  <span class="fupiao">{$T.record.Ticket}福票</span>
                  <a href="javascript:maketicket({$T.record.HandShowId},'ticket{$T.record.HandShowId}')" class="buybtn">我要祝福她</a>
                  <span class="date"><strong>购买日期：</strong>{$T.record.BuyDate.getYear()+"-"+($T.record.BuyDate.getMonth()+1)+"-"+$T.record.BuyDate.getDate()}</span>
                  </p>
                </div>
               </td>
               {#if $T.record$last}
                   {#if ($T.record$index+1)%2!=0}
                   <td width="50%"></td>
                   {#/if}
                </tr>
               {#/if}
               {#if ($T.record$index+1)%2==0 && $T.record$index!=0 }
                   </tr>
                   <tr>
               {#/if}
            
          	    <%--<li><img src="../images/{$T.record.Src}.jpg" /> <a href="javascript:void(0)" onclick="window.open('../images/{$T.record.Src}.jpg','','width=700,height=467'); return false"><img src="../images/icon_fdj.gif" class="fdjbtn" /></a>
          	      <p>姓名：{$T.record.UserName}<br />
          	      购买日期：{$T.record.BuyDate.getYear()+"-"+($T.record.BuyDate.getMonth()+1)+"-"+$T.record.BuyDate.getDate()}<br />
                  当前票数：<span class="redfont1" id="ticket{$T.record.HandShowId}">{$T.record.Ticket}票</span><br />
       	          <a href="javascript:maketicket({$T.record.HandShowId},'ticket{$T.record.HandShowId}')" class="buybtn">我要投票</a></p>
       	        </li>--%>
       	     {#/for}
         </table>
    </textarea>
    <textarea id="top3-list-template" style="display:none">
        <div class="online_zsx2list_border">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>            <img src="../images/olkf_title.gif" height="27" style="cursor:pointer" onclick="document.getElementById('online_kflist').style.display='block'" /></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="online_kftable" id="online_kflist" bgcolor="#FFFFFF">
            <tr>
              <td align="center"><a href="###" onclick="document.getElementById('online_kflist').style.display='none'"><img src="../images/olkf_close.jpg" width="76" height="16" /></a></td>
            </tr>
            {#foreach $T.topList as record begin=$T.pageBegin count=$T.pageSize}
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="10">
                <tr>
                  <td width="41%"><img src="../images/zsx_img2.gif" width="59" height="72" /></td>
                  <td width="59%"><p><strong>姓名：</strong>{$T.record.UserName}<br />
                    <strong>购买日期：</strong><br />
                    {$T.record.BuyDate.toLocaleDateString().replace("年","-").replace("月","-").replace("日","")}<br />
<span class="redfont1"><strong>祝福指数:</strong> {$T.record.Ticket}票</span></p></td>
                </tr>
              </table></td>
            </tr>
            {#/for}
          </table>
          </div>
          <div class="online_zsx2list_border" style="display:block; margin-top:10px;">
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img src="../images/olkf_zsx2title.gif" width="180" height="27" style="cursor:pointer" onclick="document.getElementById('online_kflist2').style.display='block'" /></td>
              </tr>
              </table>
              <table id="online_kflist2" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
              <tr>
                <td align="center"><a href="#" onclick="document.getElementById('online_kflist2').style.display='none'"><img src="../images/olkf_close.jpg" width="76" height="16" /></a></td>
              </tr>
              <tr>
                <td align="center">
                <div>
                <table width="100%" border="0" cellspacing="10" cellpadding="0">
                  <tr>
                    <td><img src="../images/zsx2_handshow_pic3.gif" width="158" height="82" /></td>
                  </tr>
                </table>
                </div>
                </td>
              </tr>
            </table>
        </div>
    </textarea>
</asp:Content>
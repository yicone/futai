<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="ProductSeries.aspx.cs" Inherits="FuTai.Web.ProductSeries" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        var _productList;
        var _hotlist;
        var _pageNo = 1;
        var _pageCount = 0;
        var _pageSize = 12;
        $(document).ready(function() {
            var MType = getUrlParam("maintype");
            var SType = getUrlParam("subtype");
            SType=SType=="Default"?null:SType;
            searchProduct(MType,SType,null);

        });

        function searchProduct(mtp,stp,hotted) {
            _productList = searchbytype(mtp,stp,hotted);
            _hotlist=searchbytype(mtp,stp,true);
            SetHotList();
            SetProduct();
        }
        function SetHotList()
        {
            var HForm=$("#HottedForm");
            var HotHtml="";
            if (_hotlist.length==0)
                $("#HottedForm").html('<p style="text-align:center; padding-top:80px; padding-bottom:80px">暂无相关信息</p>');
            else
            {
                HotHtml+='<table width="100%" border="0" cellspacing="0" cellpadding="0">';
                var ListCount=_hotlist.length>3?3:_hotlist.length;
                for (var i=0;i<ListCount;i++)
                {
                    var hotpro=_hotlist[i];
                    HotHtml+='<tr><td width="49%"><img src="../images/'+hotpro["ImgSrc"]+'Hot.jpg" /></td>';
                    var realPrice=parseInt(hotpro["Price"])*parseInt(hotpro["DiscountType"])
                    HotHtml+='<td width="51%"><a target="_blank" href="/ProductInfo.aspx?proid='+hotpro["ProductId"]+'">'+hotpro["ProductId"]+'<br />'+hotpro["ProductNick"]+' </a><br /><span class="redfont1">福泰实价: ￥ '+ parseInt(realPrice/100) +'</span></td>';
                    HotHtml+='</tr>';
                }
                 HotHtml+='</table>';
                 HForm.html(HotHtml);
            }
        }
        function SetProduct()
        {
            var target=$("#ProForm");
            var procount=_productList.length;
            _pageCount=parseInt(procount/12)==0?1:parseInt(procount/12);
            
            $("#NowPage").text(_pageNo);
            $("#totalpage").text(_pageCount);
            $("#pageshow2").html($("#pageshow1").html());
            
            $("#CountPro").text(procount);
            $("#CountPro2").text(procount);
            
            var TempHtml="";
            var now=(_pageNo-1)*_pageSize;
            var total=(now+_pageSize)>procount?procount:(now+_pageSize);
            for (var i=now;i<total;i++)
            {
                var Pro=_productList[i];
                TempHtml+='<li><img src="../images/'+Pro["ImgSrc"]+'.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" /><p><a href="/ProductInfo.aspx?proid='+Pro["ProductId"]+'" target="_blank">'+Pro["ProductId"]+'<br />';
                    var realPrice=parseInt(Pro["Price"])*parseInt(Pro["DiscountType"])
                TempHtml+=Pro["ProductNick"]+' </a><br /><span class="redfont1">福泰实价: ￥'+parseInt(realPrice/100)+' </span></p></li>';
            }
            target.html(TempHtml);
        }
        
        function ShowPage(type)
        {
            switch(type)
            {
                case "pre":
                    if (_pageNo>1)
                        _pageNo-=1;
                    else
                        return;
                    break;
                case "next":
                    if (_pageNo+1<=_pageCount)
                        _pageNo+=1;
                    else
                        return;
                    break;
                case "custom":
                    var Pnum=$("#pageSi").val();
                    if (!isNaN(Pnum) && Pnum>0 && Pnum<=_pageCount)
                        _pageNo=Pnum;
                    else
                    {
                        return;
                    }
                    break;
                default:
                break;
            }
            SetProduct();
        }
        

    </script>

</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
        <div class="SiteMap">
          <p><a href="#">首页</a> > <%=MainType %></p>
        </div>
        <img src="../images/product_ad1.jpg" width="782" height="109" />
        <div class="hr"></div>
        <div class="box1">
          <h2><span><%=MainType %>：</span></h2>
          <div class="cont series_miancont">
            <p><strong>送给你心爱的人最好的礼物</strong><br />
              特别的日子： <span class="redfont1">展会</span> • 纪念日 • 生日 • 派对 • 沙龙 • 外宾<br />
            最亲爱的人： <span class="redfont1">送给客户</span> • 给员工 • 给领导 • 其他身份 • 全部 </p>
          <div class="inner_hr"></div>
          <div  class="series_left">
          <ul class="PageSelect">
            <li id="pageshow1"><span id="NowPage"></span>/<span id="totalpage"></span></li>
            <li><a href="javascript:ShowPage('pre')"><img src="../images/pageselect_left.gif" /></a></li>
            <li><a href="javascript:ShowPage('next')"><img src="../images/pageselect_next.gif" /></a></li>
          </ul>
          <p class="itemNum">共有 <span class="redfont1" id="CountPro">160</span> 件</p>
          <div class="clearfix"></div>
<ul id="ProForm" class="inner_list1">
  <%--<li><img src="../images/product_img.jpg" /> <img src="../images/icon_fdj.gif" class="fdjbtn" />
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
    </li>--%>
</ul>
          <div class="clearfix"></div>
           <ul class="PageSelect">
               	<li id="pageshow2">1/50</li>
                <li><a href="javascript:ShowPage('pre')"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="javascript:ShowPage('next')"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="pageSi" size="2" maxlength="3" /></li>
                <li><a href="javascript:ShowPage('custom')"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
               <p class="itemNum">共有 <span class="redfont1" id="CountPro2">160</span> 件</p>
               <div class="clearfix"></div>
          </div>
          <div class="series_right">
       	  <div class="box1 series_cont">
            	<h2><span>最受欢迎的礼品</span></h2>
                <div id="HottedForm" class="cont">
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
      </div>
    	<div class="clearfix"></div>
        <div class="hr"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphTemplate" ID="Content3" runat="server">
</asp:Content>
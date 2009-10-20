<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeft.ascx.cs" Inherits="FuTai.Web.Controls.ucLeft" %>

<script type="text/javascript" src="/js/jquery.accordion-1.6.js"></script>
<script type="text/javascript">
	jQuery().ready(function(){
	     $.ajax({url:"/MenuList.xml",
	        type:"get",
	        datatype:"xml",
	        success:function (data)
	        {
	            var $target=$("#navigation");
	            var TempHtml="";
	            $("Menu",data).each(function(){
	                if ($("SubMenu",this).size()>0)
	                {
	                    TempHtml+='<li><a href="#" class="head"><span>'+$(this).attr("value")+'</span></a>';
	                    TempHtml+='<ul>';
	                    $("SubMenu",this).each(function(){
	                        TempHtml+='<li><a href="/ProductSeries.aspx?maintype='+$(this).parent().attr("type")+'&subtype='+$(this).attr("type")+'&menu='+$(this).parent().attr("id")+'">- '+$(this).text()+' -</a></li>';
	                    });
	                    TempHtml+='</ul>';
	                }
	                else
	                    TempHtml+='<li><a href="#" class="head"><span onclick="location=\'/ProductSeries.aspx?maintype='+$(this).attr("type")+'&menu='+$(this).attr("id")+'\'">'+$(this).attr("value")+'</span></a>';
	                    
	                TempHtml+='</li>';
	            });
	            $target.html(TempHtml);
	            jQuery('#navigation').accordion({
		            autoheight: false,
		            header: '.head'
	            })
	            var MenuId=getUrlParam("menu");
	            if (MenuId!=null && !isNaN(MenuId) && MenuId>=0 && MenuId<=5)
	                $('#navigation').activate(parseInt(MenuId));
	            
	        }
	        
	    });
	});
	
</script>

<div class="left">
        <ul class="subnav" id="navigation">
            <%--<li><a href="#" class="head"><span>结婚系列</span></a><ul>
                <li><a href="#">- 钻戒 -</a></li>
                <li><a href="#">- 婚戒 -</a></li>
                <li><a href="#">- 情侣戒 -</a></li>
                <li><a href="#">- 结婚金饰 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>时尚系列</span></a><ul>
                <li><a href="#">- 时尚钻饰系列 -</a></li>
                <li><a href="#">- 时尚珠宝系列 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>套装系列</span></a><ul>
                <li><a href="#">- 钻石套系 -</a></li>
                <li><a href="#">- 宝石套系 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span onclick="location='/ProductSeries.aspx?Series=ZhiAi'">挚爱系列</span></a>
            </li>
            <li><a href="/ProductSeries.aspx?Series=LiAi" class="head"><span onclick="location='/ProductSeries.aspx?Series=LiAi'">礼爱系列</span></a>
            </li>
            <li><a href="/ProductSeries.aspx?Series=ShangWu" class="head"><span onclick="location='/ProductSeries.aspx?Series=ShangWu'">商务系列</span></a>
            </li>--%>
        </ul>
        <div class="hr">
        </div>
        <div class="searchBox2">
            <h3>
                裸钻搜索</h3>
            <p align="center">
                <img src="/dataimg/searchbox_img.jpg" /></p>
            <p style="color:white" align="center">
                现有0582颗裸钻随您挑选</p>
            <p class="btnlst">
                <a href="/CustomBuy/CustomBuyCzuan.aspx?productType=Diamond">立刻搜索</a> <a href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            <div class="hr2">
            </div>
            <h3>
                一钻双证</h3>
            <div style="padding-top: 10px;">
                <a href="/School/Ceif.aspx" target="_blank"><img height="93" width="60" style="margin-right: 15px;" src="/images/zhen1.gif" /><img
                    height="93" width="60" src="/images/zhen.gif" /></a></div>
            <div class="hr2">
            </div>
            <h3>
                福泰今日金价</h3>
            <ul class="pricelst">
                <li><a >PT950： 360.00元/克</a></li>
                <li><a >PT900： 360.00元/克</a></li>
                <li><a >G750 ： 238.00元/克</a></li>
                <li><a >Au999： 260.00元/克</a></li>
            </ul>
        </div>
        <div class="hr">
        </div>
        <div class="rightlst1">
            <h3 class="titleStyle1">
                <span class="more"><a href="/School/School.aspx">>>更多</a></span><a href="/School/School.aspx">福泰学院</a></h3>
            <div class="cont">
                <p>
                    钻石传说是神的眼泪，是天上星星陨落地球的碎片，丘比特的"爱神之箭"的箭头上镶满了钻石，所以才有神奇的爱的魔力，这
些美丽的传说都表达了人们对钻石所赋予的独特情感…</p>
                <div class="hr3">
                </div>
                <ul>
                    <li><a href="/School/SchoolProfile.aspx?field=zhuanshi">钻石学堂</a></li>
                    <li><a href="/School/SchoolProfile.aspx?field=feicui">翡翠学堂</a></li>
                    <li><a href="/School/SchoolProfile.aspx?field=ColorfulJewel">有色宝石学堂</a></li>
                    <li><a href="/School/SchoolProfile.aspx?field=Gold">黄金铂金学堂</a></li>
                </ul>
            </div>
        </div>
        <div class="hr">
        </div>
        <div class="ad">
            <a href="/HandShow/HandShow.aspx" target="_blank"><img src="/dataimg/i_index_ad1.jpg" /></a></div>
        <div class="hr">
        </div>
        <div class="rightlst1">
            <h3 class="titleStyle1">
                <span class="more"><a href="javascript:alert('暂未开放评论！')">>>更多</a></span><a href="javascript:alert('暂未开放评论！')">热门评论</a></h3>
            <div class="cont">
                <p>
                    <a href="javascript:alert('暂未开放评论！')">质量没得说，价格公道， 很多细节的处理让人很温 馨...</a></p>
                <p>
                    <span class="more">[<a href="javascript:alert('暂未开放评论！')">详细</a>]</span>作者：小不点</p>
                <div class="hr3">
                </div>
                <p>
                    <a href="javascript:alert('暂未开放评论！')">非常好，比我想象的好， 包装，运输都很满意，我 第一次想试试看，...</a></p>
                <p>
                    <span class="more"><a href="#">[</a><a href="javascript:alert('暂未开放评论！')">详细</a>]</span>作者：王晴</p>
                <div class="hr3">
                </div>
                <p>
                    <a href="javascript:alert('暂未开放评论！')">配送速度超快，周六下午 订货今天就到了。包装很 环保，质量没...</a></p>
                <p>
                    <span class="more">[<a href="javascript:alert('暂未开放评论！')">详细</a>]</span>作者：李超</p>
            </div>
        </div>
    </div>
﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeft.ascx.cs" Inherits="FuTai.Web.Controls.ucLeft" %>

<script type="text/javascript" src="/js/jquery.accordion-1.6.js"></script>
<script type="text/javascript">
	jQuery().ready(function(){
		jQuery('#navigation').accordion({
			autoheight: false,
			header: '.head'
		});
	});
</script>

<div class="left">
        <ul class="subnav" id="navigation">
            <li><a href="#" class="head"><span>结婚系列</span></a><ul>
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
            <li><a href="#" class="head"><span>挚爱系列</span></a>
            </li>
            <li><a href="#" class="head"><span>礼爱系列</span></a>
            </li>
            <li><a href="#" class="head"><span>商务系列</span></a>
            </li>
        </ul>
        <div class="hr">
        </div>
        <div class="searchBox2">
            <h3>
                裸钻搜索</h3>
            <p align="center">
                <img src="/dataimg/searchbox_img.jpg" /></p>
            <p style="color:white" align="center">
                现有0000颗裸钻随您挑选</p>
            <p class="btnlst">
                <a href="#">立刻订购</a><a href="#">立刻订购</a></p>
            <div class="hr2">
            </div>
            <h3>
                一钻双证</h3>
            <div style="padding-top: 10px;">
                <img height="93" width="60" style="margin-right: 15px;" src="/dataimg/zhen.gif" /><img
                    height="93" width="60" src="/dataimg/zhen.gif" /></div>
            <div class="hr2">
            </div>
            <h3>
                今日金价</h3>
            <ul class="pricelst">
                <li><a href="#">PT950： 310.00元/克</a></li>
                <li><a href="#">PT900： 300.00元/克</a></li>
                <li><a href="#">G750 ： 185.00元/克</a></li>
            </ul>
        </div>
        <div class="hr">
        </div>
        <div class="rightlst1">
            <h3 class="titleStyle1">
                <span class="more"><a href="/School/School.aspx">>>更多</a></span><a href="/School/School.aspx">福泰学院</a></h3>
            <div class="cont">
                <p>
                    上班族女人 购买钻石窍门 计划购物，别打乱了收支 平衡，消费前先做预算， 购买珠宝钻饰更应如此…</p>
                <div class="hr3">
                </div>
                <ul>
                    <li><a href="#">10招教你选购完美钻石 婚戒</a></li>
                    <li><a href="#">戒指的戴法和含义</a></li>
                    <li><a href="#">铂金钻石首饰的保养</a></li>
                    <li><a href="#">钻石清洗方法简易三招</a></li>
                </ul>
            </div>
        </div>
        <div class="hr">
        </div>
        <div class="ad">
            <img src="/dataimg/i_index_ad1.jpg" /></div>
        <div class="hr">
        </div>
        <div class="rightlst1">
            <h3 class="titleStyle1">
                <span class="more"><a href="#">>>更多</a></span><a href="#">热门评论</a></h3>
            <div class="cont">
                <p>
                    <a href="#">质量没得说，价格公道， 很多细节的处理让人很温 馨...</a></p>
                <p>
                    <span class="more">[<a href="#">详细</a>]</span>作者：林宣清</p>
                <div class="hr3">
                </div>
                <p>
                    <a href="#">非常好，比我想象的好， 包装，运输都很满意，我 第一次想试试看，...</a></p>
                <p>
                    <span class="more"><a href="#">[</a><a href="#">详细</a>]</span>作者：林宣清</p>
                <div class="hr3">
                </div>
                <p>
                    <a href="#">配送速度超快，周六下午 订货今天就到了。包装很 环保，衣服质量没...</a></p>
                <p>
                    <span class="more">[<a href="#">详细</a>]</span>作者：林宣清</p>
            </div>
        </div>
    </div>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="FuTai.Web.Controls.ucHeader" %>
<div class="head">
    <div class="logo">
        <img height="70" width="200" src="images/logo.jpg" /></div>
    <div class="userMenu">
        <p>
            <a href="#">登录</a>|<a href="#">注册</a>|<a href="#">我的帐户</a>|<a href="#">购物车</a>|<a
                href="#">个性定制订单查询</a>|<a href="#">帮助中心</a>|<a href="#">体验中心</a></p>
    </div>
    <div class="bookNum">
        <img src="images/booknum.jpg" /></div>
    <div class="clearfix">
    </div>
    <ul class="topNav">
        <li><a href="#">首 页</a></li>
        <li><a href="/ProductList.aspx?productType=Diamond">裸 钻</a></li>
        <li><a href="/ProductList.aspx?productType=RingBracket">戒 托</a></li>
        <li><a href="/ProductList.aspx?productType=DiamondRing">钻 戒</a></li>
        <li><a href="/ProductList.aspx?productType=PairRing">对 戒</a></li>
        <li><a href="/ProductList.aspx?productType=DiamondOrnament">钻 饰</a></li>
        <li><a href="/ProductList.aspx?productType=GoldOrnament">金 饰</a></li>
        <li><a href="/ProductList.aspx?productType=Jewel">珠 宝</a></li>
        <li><a href="#">福泰精品</a></li>
        <li><a href="#">关于福泰</a></li>
    </ul>
    <p class="cartInfo">
        购物车中<br />
        有000件商品</p>
    <div class="clearfix">
    </div>
    <div class="searchBox">
        <p class="searchIntro">
            百度电子商务首铺 诚信商户</p>
        <p class="searchInput">
            search :
            <select name="" style="word-spacing:1.5em;text-align:center;">
                <option>所有分类</option>
                <option>裸 钻</option>
                <option>戒 托</option>
                <option>钻 戒</option>
                <option>对 戒</option>
                <option>钻 饰</option>
                <option>金 饰</option>
                <option>珠 宝</option>
            </select>
            for :
            <select name="">
                <option>所有价格</option>
            </select>
            <input type="text" defaultword="输入关键字" class="input" name="" />
            <label>
                <input type="submit" value="提交" id="button" name="button" class="btn" />
            </label>
            <a class="searchLink" href="#">福泰搜索</a>
        </p>
    </div>
    <div class="banner">
        <img src="images/banner.jpg" />
    </div>
</div>

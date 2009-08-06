﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="FuTai.Web.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />

    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>

    <script type="text/javascript">
        var _productList;
        var _pageNo = 1;
        var _pageCount = 0;
        var _pageSize = 9;
        $(document).ready(function() {
            var productType = '<%= this.ProductType %>';
            var list = getCategoryList(productType);

            renderTemplate('category', {
                'categoryList': list
            });

            // 默认选中分类中的第一项
            $('div.TypeSelect ul').find('li:first a').attr('class', '');

            searchProduct();

            $('#button2').click(function() {
                searchProduct();
            });
            // TODO: 三个排序按钮的触发搜索的实现

            $('.next-page-link').click(function() {
                showPage(++_pageNo, _pageSize);
            });
            $('.prev-page-link').click(function() {
                showPage(--_pageNo, _pageSize);
            });
            $('#pager-go').click(function() {
                var $txtPageNo = $('#txtPageNo');
                var pageNo = $txtPageNo.val();
                if (/\d/.test(pageNo)) {
                    showPage(pageNo);
                }
            });
        });

        function searchProduct() {
            var typeIdCollection = [];
            $('div.TypeSelect').find('li a[class=""]').each(function() {
                var typeId = $(this).attr('typeid');
                typeIdCollection.push(typeId);
            });

            var query = new Query();
            query.price1 = $('#price1').val();
            query.price2 = $('#price2').val();
            // TODO: 可能需要class来确定排序字段和升/降序
            //            query.sort =
            //            query.order =

            var productType = '<%= this.ProductType %>';
            // 搜索. 搜索结果缓存到全局变量!
            _productList = search(productType, query, typeIdCollection);
            
            // 计算页数
            _pageCount = Math.ceil(_productList.length / _pageSize);
            if (_pageCount < 0) _pageCount = 0;

            renderTemplate('product-list', { 'productList': _productList, 'pageBegin': 0, 'pageSize': _pageSize });

            $('li.pager').text('1/' + _pageCount);
        }

        function showPage(pageNo) {
            if (!_productList) {
                searchProduct();
                return;
            }

            // 修正参数
            if (pageNo < 1) pageNo = 1;
            if (_pageCount == 0)  pageNo = 1;
            if (pageNo > _pageCount) pageNo = _pageCount;
//            console.log(pageNo);
            // 将修正的结果缓存
            _pageNo = pageNo;

            $('li.pager').text(pageNo + '/' + _pageCount);

            var pageBegin = (pageNo - 1) * _pageSize;
            
            renderTemplate('product-list', { 'productList': _productList, 'pageBegin': pageBegin, 'pageSize': _pageSize });
        }

        function switchType($link) {
            $link.parent().siblings().find('a').each(function() {
                $(this).attr('class', 'grayfont1');
            });
            $link.attr('class', '');

            searchProduct();
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="left">
        <ul class="subnav" id="navigation">
            <li><a href="#" class="head"><span>按种类分</span></a><ul>
                <li><a href="#">- 订婚对戒 -</a></li>
                <li><a href="#">- 戒指/指环 -</a></li>
                <li><a href="#">- 项链/吊坠 -</a></li>
                <li><a href="#">- 手镯/手链 -</a></li>
                <li><a href="#">- 耳钉/耳饰 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>按价格分</span></a><ul>
                <li><a href="#">- 订婚对戒 -</a></li>
                <li><a href="#">- 戒指/指环 -</a></li>
                <li><a href="#">- 项链/吊坠 -</a></li>
                <li><a href="#">- 手镯/手链 -</a></li>
                <li><a href="#">- 耳钉/耳饰 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>按材质分</span></a><ul>
                <li><a href="#">- 订婚对戒 -</a></li>
                <li><a href="#">- 戒指/指环 -</a></li>
                <li><a href="#">- 项链/吊坠 -</a></li>
                <li><a href="#">- 手镯/手链 -</a></li>
                <li><a href="#">- 耳钉/耳饰 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>按大小分</span></a><ul>
                <li><a href="#">- 订婚对戒 -</a></li>
                <li><a href="#">- 戒指/指环 -</a></li>
                <li><a href="#">- 项链/吊坠 -</a></li>
                <li><a href="#">- 手镯/手链 -</a></li>
                <li><a href="#">- 耳钉/耳饰 -</a></li>
            </ul>
            </li>
            <li><a href="#" class="head"><span>按风格分</span></a><ul>
                <li><a href="#">- 订婚对戒 -</a></li>
                <li><a href="#">- 戒指/指环 -</a></li>
                <li><a href="#">- 项链/吊坠 -</a></li>
                <li><a href="#">- 手镯/手链 -</a></li>
                <li><a href="#">- 耳钉/耳饰 -</a></li>
            </ul>
            </li>
        </ul>
        <div class="hr">
        </div>
        <div class="searchBox2">
            <h3>
                裸钻搜索</h3>
            <p align="center">
                <img src="/dataimg/searchbox_img.jpg" /></p>
            <p align="center">
                现有0000颗裸钻随您挑选</p>
            <p class="btnlst">
                <a href="#">立刻订购</a><a href="#">立刻订购</a></p>
            <div class="hr2">
            </div>
            <h3>
                一钻双证</h3>
            <div style="padding-top: 10px;">
                <img height="93" width="60" style="margin-right: 15px;" src="dataimg/zhen.gif" /><img
                    height="93" width="60" src="dataimg/zhen.gif" /></div>
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
                <span class="more"><a href="#">>>更多</a></span><a href="#">福泰学院</a></h3>
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
    <div class="inner_main">
        <div class="SiteMap">
            <p>
                <a href="#">首页</a> > <span>

                    <script>                        renderProductType('<%= this.ProductType %>');</script>

                </span>
            </p>
        </div>
        <img width="782" height="109" src="/images/product_ad1.jpg" />
        <div class="hr">
        </div>
        <div class="box1">
            <h2>
                <span>

                    <script>                        renderProductType('<%= this.ProductType %>');</script>

                    ：</span></h2>
            <div class="cont">
                <ul class="ItemListSearch">
                    <li>价格：</li>
                    <li>
                        <input type="text" size="5" id="price1" class="input1" /></li>
                    <li>-</li>
                    <li>
                        <input type="text" size="5" id="price2" class="input1" /></li>
                    <li>
                        <input type="button" value="确定" id="button2" name="button2" class="btn1Style" /></li>
                    <li><a href="#">
                        <img width="45" height="22" src="/images/itemsearch_b1.gif" /></a></li>
                    <li><a href="#">
                        <img width="71" height="22" src="/images/itemsearch_b2.gif" /></a></li>
                    <li><a href="#">
                        <img width="48" height="22" src="/images/itemsearch_b3.gif" /></a></li></ul>
                <p class="More">
                    <a class="Icon_gift" href="#">支持货到付款</a></p>
                <div class="clearfix">
                </div>
                <div id="category" class="TypeSelect" style="width: 600px">
                    <!-- 模板生成 -->
                </div>
                <ul class="PageSelect">
                    <li class="pager">1/50</li>
                    <li><a class="prev-page-link" href="javascript:void(0);">
                        <img src="/images/pageselect_left.gif" /></a></li>
                    <li><a class="next-page-link" href="javascript:void(0);">
                        <img src="/images/pageselect_next.gif" /></a></li>
                </ul>
                <div class="clearfix">
                </div>
                <div id="product-list">
                    <%-- 模板生成 --%>
                </div>
                <ul class="PageSelect">
                    <li class="pager">1/50</li>
                    <li><a class="prev-page-link" href="javascript:void(0);">
                        <img src="/images/pageselect_left.gif" /></a></li>
                    <li><a class="next-page-link" href="javascript:void(0);">
                        <img src="/images/pageselect_next.gif" /></a></li>
                    <li>
                        <input type="text" size="2" id="txtPageNo" class="input1" name="textfield" /></li>
                    <li><a id="pager-go" href="javascript:void(0);">
                        <img src="/images/pageselect_comfirm.gif" /></a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
    <textarea id="category-template" style="display: none">
         {#foreach $T.categoryList as category}
         <h4>{$T.category.name}：</h4>
         <ul>
             {#foreach $T.category.list as record}
                 <%--<li><a href="#" class="grayfont1" typeId="{$T.record.typeId}" onclick="{$T.record.onclick}">{$T.record.item}</a></li>--%>
                 <li><a href="#" class="grayfont1" typeId="{$T.record.typeId}" onclick="javascript:switchType($(this));">{$T.record.item}</a></li>
             {#/for}
         </ul>
         {#/for}
    </textarea>
    <textarea id="product-list-template" style="display: none">
        {#foreach $T.productList as record begin=$T.pageBegin count=$T.pageSize}
        <%--如果是每行的第一项--%>
        {#if $T.record$index % 3 == 0 || $T.record$first}
        <div class="inner_hr">
        </div>
        <ul class="inner_list1">
        {#/if}
             <li>
                <img src="/images/product_img.jpg" />
                <img class="fdjbtn" src="/images/icon_fdj.gif" />
                <p>
                    <a href="#"><strong>{$T.record.ProductId}</strong></a><br />
                    男款:<span class="redfont1">¥{$T.record.Price}</span><br />
                    女款:<span class="redfont1">¥{$T.record.Price}</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span></p>
            </li>
        <%--如果是每行最后一项, 或者是列表的最后一项--%>
        {#if ($T.record$index + 1) % 3 == 0 || $T.record$last}
        </ul>
        <div class="clearfix">
        </div>
        {#/if}
        {#/for}
    </textarea>
</asp:Content>

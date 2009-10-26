<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="FuTai.Web.ProductList" %>
<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />

    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>

    <script type="text/javascript">
        var DiamondId;
        var IsCustom;
        var _productList;
        var _pageNo = 1;
        var _pageCount = 0;
        var _pageSize = 9;
        $(document).ready(function() {
            if (getUrlParam("productType")=="RingBracket" && getUrlParam("IsCustom")=="true")
                $(".Pstep").show();
        
            DiamondId=(getUrlParam("Diamond")==null || getUrlParam("Diamond")=="")?"" : getUrlParam("Diamond");
            IsCustom=(getUrlParam("IsCustom")=="true" && DiamondId!="")? true: false;    //选择戒托处理
            
            var productType = '<%= this.ProductType %>';
            var list = getCategoryList(productType);

            renderTemplate('category', {
                'categoryList': list
            });

            // 默认选中分类中的第一项
            //$('div.TypeSelect ul').find('li:first a').attr('class', '');

            setTimeout("searchProduct()",200);

            $('#button2').click(function() {
                searchProduct();
            });

            // 三个排序按钮的触发搜索的实现
            $('a.sort').click(function() {
                $('a.sortnow').attr('class', 'sort');
                $(this).attr('class', 'sortnow');

                searchProduct();
            });

            $('a.sortnow').click(function() {
                searchProduct();
            });

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
            $("#searchall").click(function(){    //搜索全部
                searchProduct(true);
            });
        });

        function searchProduct(all) {
            var typeIdCollection = [];
            $('div.TypeSelect').find('ul').each(function() {
                if ($('li a[class=""]',this).size()==0)
                {
                    typeIdCollection.push(null);
                }
                else
                {
                    $(this).find('li a[class=""]').each(function(){
                        var typeId = $(this).attr('typeid');
                        typeIdCollection.push(typeId);
                    });
                }
            });
            var query = new Query();
            query.price1 = $('#price1').val();
            query.price2 = $('#price2').val();
            query.sort = $('a.sortnow').attr('sortfield');
            // TODO: 可能需要class来确定排序字段和升/降序
            //            query.order =
            
            if (all)  //搜索全部处理
            {
               typeIdCollection = [];
               query = new Query();
                $('div.TypeSelect').find('li a[class=""]').each(function() {
                    $(this).addClass("grayfont1");
                });
            }
            var productType = '<%= this.ProductType %>';
            // 搜索. 搜索结果缓存到全局变量!
            _productList = search(productType, query, typeIdCollection);
            
            // 计算页数
            _pageCount = Math.ceil(_productList.length / _pageSize);
            if (_pageCount < 0) _pageCount = 0;

            if (IsCustom)
            {
                $("#product-list").attr("id","Custom");
                renderTemplate('Custom', { 'productList': _productList, 'pageBegin': 0, 'pageSize': _pageSize});
            }
            else
            {
                if(productType != "PairRing"){
                    renderTemplate('product-list', { 'productList': _productList, 'pageBegin': 0, 'pageSize': _pageSize});
                }else{
                    $('#product-list').attr('id', 'pairring-list');
                    renderTemplate('pairring-list', { 'productList': _productList, 'pageBegin': 0, 'pageSize': _pageSize });
                }
            }
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

            var productType = '<%= this.ProductType %>';
            var id = IsCustom ? "Custom" : productType == "PairRing" ? "pairring-list" : "product-list";
            renderTemplate(id, { 'productList': _productList, 'pageBegin': pageBegin, 'pageSize': _pageSize});
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
    <uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
        <p class="Pstep" align="right" style="display:none"><img src="../images/custom_step2.jpg" /></p>
        <div class="SiteMap">
            <p>
                <a href="/Default.aspx">首页</a> > <span>

                    <script type="text/javascript">renderProductType('<%= this.ProductType %>');</script>

                </span>
            </p>
        </div>
        <img width="782" height="109" src="/images/product_ad1.jpg" />
        <div class="hr">
        </div>
        <div class="box1">
            <h2>
                <span>

                    <script type="text/javascript">renderProductType('<%= this.ProductType %>');</script>

                    ：</span></h2>
            <div class="cont">
                <ul class="ItemListSearch">
                    <li>价格：</li>
                    <li>
                        <input type="text" size="5" id="price1" class="input1" value="<%= this.Price1 %>" /></li>
                    <li>-</li>
                    <li>
                        <input type="text" size="5" id="price2" class="input1" value="<%= this.Price2 %>" /></li>
                    <li>
                        <input type="button" value="确定" id="button2" name="button2" class="btn1Style" style="cursor:pointer;" /></li>
                    <li><a href="javascript:void(0);" class="sortnow" sortfield="sales">
                        <img width="45" height="22" src="/images/itemsearch_b1.gif" /></a></li>
                    <li><a href="javascript:void(0);" class="sort" sortfield="time">
                        <img width="71" height="22" src="/images/itemsearch_b2.gif" /></a></li>
                    <li><a href="javascript:void(0);" class="sort"  sortfield="price">
                        <img width="48" height="22" src="/images/itemsearch_b3.gif" /></a></li>
                    <li>
                    <input type="button" value="查看全部" id="searchall" name="button2" class="btn1Style" style="cursor:pointer;" /></li></ul>
                <p class="More">
                    <a class="Icon_gift" href="#">支持货到付款</a></p>
                <div class="clearfix">
                </div>
                <div id="category" class="TypeSelect">
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
                <img src="/images/productImg/{$T.record.kuanhao}.jpg" width="128" height="121" />
                <img class="fdjbtn" src="/images/icon_fdj.gif" />
                <p>
                    <a href="/ProductInfo.aspx?proid={$T.record.ProductId}" target="_blank"><strong>{$T.record.ProductId}</strong></a><br />
        {#if $T.record.ProductType=="GoldOrnament"}  
                    金重:<span class="redfont1">¥{$T.record.Goldweight}</span><br />
                    工费:<span class="redfont1">¥{$T.record.gongfei}</span><br />   
                    <span class="grayfont1">订做请咨询福泰顾问</span>   
        {#else}      
                    市场价:¥{$T.record.Price}<br />
                    福泰价:<span class="redfont1">¥{parseInt($T.record.Price*$T.record.DiscountType/100)}</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span>
        {#/if}             
                    </p>
            </li>
        <%--如果是每行最后一项, 或者是列表的最后一项--%>
        {#if ($T.record$index + 1) % 3 == 0 || $T.record$last}
        </ul>
        <div class="clearfix">
        </div>
        {#/if}
        {#/for}
    </textarea>
    <textarea id="pairring-list-template" style="display: none">
        {#foreach $T.productList as record begin=$T.pageBegin count=$T.pageSize}
        <%--如果是每行的第一项--%>
        {#if $T.record$index % 3 == 0 || $T.record$first}
        <div class="inner_hr">
        </div>
        <ul class="inner_list1">
        {#/if}
             <li>
                <img src="/images/productImg/{$T.record.ImgSrc}.jpg" width="128" height="121" />
                <img class="fdjbtn" src="/images/icon_fdj.gif" />
                <p>
                    <a href="/ProductInfo.aspx?proid={$T.record.PairRingId0}&pairid={$T.record.PairRingId1}&total={$T.record.Price}" target="_blank"><strong>{$T.record.PairId}</strong></a><br />
        {#if $T.record.Type1==1}  
                    金重:<span class="redfont1">¥{$T.record.GoldWeight}</span><br />
                    工费:<span class="redfont1">¥{$T.record.gongfei}</span><br />
                    <span class="grayfont1">订做请咨询福泰顾问</span>
        {#else}         
                    <a href="/ProductInfo.aspx?proid={$T.record.PairRingId0}&pairid={$T.record.PairRingId1}&total={$T.record.Price}" target="_blank">男款:<span class="redfont1">¥{$T.record.Price0}</span></a><br />
                    <a href="/ProductInfo.aspx?proid={$T.record.PairRingId1}&pairid={$T.record.PairRingId0}&total={$T.record.Price}" target="_blank">女款:<span class="redfont1">¥{$T.record.Price1}</span></a><br />
                    总价:<span class="redfont1">¥{$T.record.Price}</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span>
        {#/if}
                    </p>
            </li>
        <%--如果是每行最后一项, 或者是列表的最后一项--%>
        {#if ($T.record$index + 1) % 3 == 0 || $T.record$last}
        </ul>
        <div class="clearfix">
        </div>
        {#/if}
        {#/for}
    </textarea>
    
    <textarea id="Custom-template" style="display: none">
        {#foreach $T.productList as record begin=$T.pageBegin count=$T.pageSize}
        <%--如果是每行的第一项--%>
        {#if $T.record$index % 3 == 0 || $T.record$first}
        <div class="inner_hr">
        </div>
        <ul class="inner_list1">
        {#/if}
             <li>
                <img src="/images/productImg/{$T.record.kuanhao}.jpg" width="128" height="121" />
                <img class="fdjbtn" src="/images/icon_fdj.gif" />
                <p>
                    <a href="/ProductInfo.aspx?RingBraId={$T.record.ProductId}&DiamondId={DiamondId}&IsCustom=true" target="_blank"><strong>{$T.record.ProductId}</strong></a><br />
        {#if $T.record.ProductType=="GoldOrnament"}  
                    金重:<span class="redfont1">¥{$T.record.Goldweight}</span><br />
                    工费:<span class="redfont1">¥{$T.record.gongfei}</span><br />   
                    <span class="grayfont1">订做请咨询福泰顾问</span>   
        {#else}      
                    市场价:¥{$T.record.Price}<br />
                    福泰价:<span class="redfont1">¥{parseInt($T.record.Price*$T.record.DiscountType/100)}</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span>
        {#/if}             
                    </p>
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

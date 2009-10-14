<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="FuTai.Web.Controls.ucHeader" %>
<script type="text/javascript">
    $(function() {
        $('#btnSearch').click(function() {
            var productType = $('#selectProduct').val();
            var price1 = $('#selectPrice option:selected').attr('price1');
            var price2 = $('#selectPrice option:selected').attr('price2');
            if (productType == "Diamond") 
            {
                var urlFormat = "/CustomBuy/CustomBuyCzuan.aspx?productType={0}&price1={1}&price2={2}";
                var url = urlFormat.format(productType, price1 ? price1 : '', price2 ? price2 : '');
            }
            else
            {
                var urlFormat = "/ProductList.aspx?productType={0}&price1={1}&price2={2}";
                var url = urlFormat.format(productType, price1 ? price1 : '', price2 ? price2 : '');
            }
            location.href = url;
        });

        var r = BaseAjax.GetLoginUser();
        if (!r.error) {
            var user = r.value;
            if (user) {
                IsLogin=true;
                GetUserAcc(user.Authority);
                $('#linkLogin').text('欢迎你, ' + user.NickName).attr('href', '/');
                $('#linkLogon').text('注销').attr('href', '/LogoutPage.aspx').attr('id', 'linkLogout');
            }
            else
                IsLogin=false;
                
        }
    
        $('#linkLogout').click(function() {
            var r = BaseAjax.Logout();
            if (!r.error) {
                location.href = "/";
            }

            return false;
        });
    });
    function GetUserAcc(usertype)
    {
        $.ajax({
            url:"/UserAccount.xml",
            type:"get",
            dataType:"xml",
            success:function(data)
            {
                $("Utype",data).each(function(){
                    if ($(this).attr("type")==usertype)
                    {
                        UserAccNum=parseFloat($(this).attr("account"));
                        return;
                    }
                });
            }
        });
    }
</script>
<div class="head">
    <div class="logo">
        <img height="70" width="200" src="/images/logo.jpg" /></div>
    <div class="userMenu">
        <p>
            <a id="linkLogin" href="/LoginRegister.aspx">登录</a>|<a id="linkLogon" href="/LoginRegister.aspx">注册</a>|<a href="/Account/MyAccount.aspx">我的帐户</a>|<a href="/ProduceCart.aspx">购物车</a>|<a
                href="#">个性定制订单查询</a>|<a href="/NewIntro/NewExperience.aspx?type=Help" target="_blank">帮助中心</a>|<a href="/NewIntro/NewExperience.aspx" target="_blank">体验中心</a></p>
    </div>
    <div class="bookNum">
        <img src="/images/booknum.jpg" /></div>
    <div class="clearfix">
    </div>
    <ul class="topNav">
        <li><a id="Index" href="/Default.aspx">首 页</a></li>
        <li><a id="Diamond" href="/CustomBuy/CustomBuyCzuan.aspx?productType=Diamond&IsCustom=false">裸 钻</a></li>
        <li><a id="RingBracket" href="/ProductList.aspx?productType=RingBracket">戒 托</a></li>
        <li><a id="DiamondRing" href="/ProductList.aspx?productType=DiamondRing">钻 戒</a></li>
        <li><a id="PairRing" href="/ProductList.aspx?productType=PairRing">对 戒</a></li>
        <li><a id="DiamondOrnament" href="/ProductList.aspx?productType=DiamondOrnament">钻 饰</a></li>
        <li><a id="GoldOrnament" href="/ProductList.aspx?productType=GoldOrnament">金 饰</a></li>
        <li><a id="Jewel" href="/ProductList.aspx?productType=Jewel">宝 石</a></li>
        <li><a id="JP" href="/HighLevelProduct.aspx">福泰精品</a></li>
        <li><a id="About" href="/About.aspx">关于福泰</a></li>
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
            <select id="selectProduct">   <%--style="word-spacing:1.0em;"--%>
                <option value="Diamond" selected="selected">裸钻</option>
                <option value="RingBracket">戒托</option>
                <option value="DiamondRing">钻戒</option>
                <option value="PairRing">对戒</option>
                <option value="DiamondOrnament">钻饰</option>
                <option value="GoldOrnament">金饰</option>
                <option value="Jewel">珠宝</option>
            </select>
            for :
            <select id="selectPrice">
                <option selected="selected">所有价格</option>
                <option price1="30000" price2="50000">30000-50000</option>
                <option price1="50000" price2="100000">50000-100000</option>
            </select>
            <%--<input type="text" defaultword="输入关键字" class="input" name="" />--%>
            <label>
                <input type="button" value="提交" id="btnSearch" class="btn" style="cursor:pointer;" />
            </label>
            <a class="searchLink" href="/SearchHigh.aspx" target="_blank">福泰搜索</a>
        </p>
    </div>
    <div class="banner">
        <img id='adv' src="/images/banner.jpg" usemap="#Map" />
        <map name="Map" id="Map"><area shape="rect" coords="958,68,979,89" href="#" onclick="document.getElementById('adv').style.display='none'" /></map>
    </div>
</div>

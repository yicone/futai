<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="FuTai.Web.Default" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />

    <script type="text/javascript">
        $(document).ready(function() {
            
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <uc1:ucLeft ID="ucLeft1" runat="server" />
    <div class="middle">
        <div class="ad photoFlow">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="633" height="298">
              <param name="movie" value="/flash/MyMovie.swf?xml=Img.xml" />
              <param name="quality" value="high" />
              <embed src="/flash/MyMovie.swf?xml=Img.xml" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="633" height="298"></embed>
      	  </object>
        </div>
        <div class="hr">
        </div>
        <img height="34" width="632" src="images/index_midtitle1.jpg" />
        <ul class="i_plst1 i_plstbg1">
            <li>
                <img src="dataimg/product_img1.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    <br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img1.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img1.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
        </ul>
        <div class="hr">
        </div>
        <div class="ad">
            <img height="218" width="631" src="dataimg/banner2.jpg" /></div>
        <div class="hr">
        </div>
        <img height="34" width="632" style="display: block;" src="images/index_midtitle2.jpg" />
        <h3 class="i_h3_1">
            <a class="more" href="#">>>更多</a>挚爱专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    情侣系列</h4>
                <img src="dataimg/product_img1.jpg" />
                <p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    婚庆系列</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    周年婚庆系列</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
        </ul>
        <h3 class="i_h3_2">
            <a class="more" href="#">>>更多</a>礼爱专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    送家人</h4>
                <img src="dataimg/product_img1.jpg" />
                <p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送爱人</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送朋友</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
        </ul>
        <h3 class="i_h3_3">
            <a class="more" href="#">>>更多</a>商务专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    情侣系列</h4>
                <img src="dataimg/product_img1.jpg" />
                <p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    婚庆系列</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    周年婚庆系列</h4>
                <img src="dataimg/product_img2.jpg" /><p>
                    <a href="#"><strong>花样年华</strong></a><br />
                    原价：￥900<br />
                    现价：￥780<br />
                    <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
            </li>
        </ul>
    </div>
    <div class="right">
        <div class="addInfo">
            <img src="dataimg/add_img.jpg" />
            <p>
                <strong><a href="#">置地广场旗舰店<br />
                    地址：南京东路步行街<br />
                    409号置地广场921室</a></strong></p>
        </div>
        <div class="hr">
        </div>
        <div class="customBox">
            <ul>
                <li><strong><a href="#">定制流程</a></strong></li>
                <li><a href="/CustomBuy/CustomBuyCzuan.aspx">1,选择属于你的钻石</a></li>
                <li><a href="#">2,选择属于你的款式</a></li>
                <li><a href="#">3,国际名师精工镶嵌</a></li>
                <li><a href="#">4,铭刻属于你的印记</a></li>
            </ul>
        </div>
        <div class="hr">
        </div>
        <ul class="pLink">
            <li><a href="/CustomBuy/CustomBuyCzuan.aspx">
                <img src="images/i_rnavimg1.jpg" /><span>来料定制</span></a></li><li><a href="#">
                    <img src="images/i_rnavimg2.jpg" /><span>来图定制</span></a></li><li><a href="#">
                        <img src="images/i_rnavimg3.jpg" /><span>破损重生</span></a></li><li><a href="#">
                            <img src="images/i_rnavimg4.jpg" /><span>以旧换新</span></a></li>
        </ul>
        <div class="hr">
        </div>
        <div class="rankLst">
            <h3>
                <a href="#">畅销排行榜</a></h3>
            <ul>
                <li><a href="#">1、10招教你选购完美钻石</a></li>
                <li><a href="#">2、戒指的戴法和含义</a></li>
                <li><a href="#">3、铂金钻石首饰的保养</a></li>
                <li><a href="#">4、钻石清洗方法简易三招</a></li>
                <li><a href="#">5、铂金钻石首饰的保养</a></li>
            </ul>
        </div>
        <div class="hr">
        </div>
        <div class="customBox2">
            <h3>
                <a href="#">定制您的礼物</a></h3>
            <img src="images/customBox2_img.jpg" />
            <p>
                <a class="buybtn" href="\PayMent\Login.aspx">立刻订购</a></p>
        </div>
        <div class="hr">
        </div>
        <div class="ad">
            <img src="images/i_ad1.jpg" /></div>
        <div class="hr">
        </div>
        <div class="ad">
            <img src="images/i_ad2.jpg" /></div>
        <div class="hr">
        </div>
        <div class="ad">
            <img src="images/i_ad3.jpg" /></div>
        <div class="hr">
        </div>
        <div class="ad">
            <img src="images/i_ad4.jpg" /></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="ProduceCart.aspx.cs" Inherits="FuTai.Web.ProduceCart" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphHead">
<link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <script type="text/javascript">
        $(document).ready(function() {

    });
    </script> 
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphContent">
<div class="custom_main1">
      	<p class="cartStep">结算步骤：<span class="redfont1">登录/注册</span> &gt; 填写收获信息 &gt; 支付 &gt; 订购成功</p>
        <div class="box1 cartBox">
          <h2><span>您选购的商品如下：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
              <tr>
                <th>类型</th>
                <th>图片</th>
                <th>产品名</th>
                <th>市场价</th>
                <th>福泰价</th>
                <th>&nbsp;</th>
              </tr>
              <tr>
                <td>现货</td>
                <td><img src="../images/cart_img.jpg" width="70" height="70" /></td>
                <td> 1.002克拉&lt;M色SI净度裸钻              </td>
                <td>¥54000.00                           </td>
                <td>¥30000.00                            </td>
                <td><label>
                  <input type="submit" name="button2" id="button2" class="btn1Style" value="删 除" />
                </label></td>
              </tr>
              <tr>
                <td>现货</td>
                <td><img src="../images/cart_img.jpg" width="70" height="70" /></td>
                <td> 1.002克拉&lt;M色SI净度裸钻 </td>
                <td>¥54000.00 </td>
                <td>¥30000.00 </td>
                <td><input type="submit" name="button3" id="button3" class="btn1Style" value="删 除" /></td>
              </tr>
              <tr>
                <th colspan="6" align="right">总计产品共 2 件      <span class="redfont1"> ¥31240.00 </span></th>
              </tr>
            </table>
            <p class="More cartBtnbox"><input type="button" name="button3" id="button3" class="btn1Style" value="继续购物" onclick="location='/Default.aspx'" />&nbsp;&nbsp;<input type="button" name="button3" id="button3" class="btn1Style" value="进入结算中心" onclick="location='/PayMent/Login.aspx'" /></p>
            <div class="clearfix"></div>
            </div>
        </div>
        <div class="inner_bottomcont">
          <h4 class="cartBtnbox">福泰的企业精神——创新！分享！快乐！</h4>
          <div class="inner_hr"></div>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable2">
            <tr>
              <td width="25%" valign="top"><p>1. 更低价格</p>
                  <p>&nbsp;</p>
                <p>同类产品仅是传统珠宝店的3-7折，<br />
                  其他网站的7-9折 </p></td>
              <td width="25%" valign="top"><p>2. 更多选择</p>
                  <p>&nbsp;</p>
                <p>数千款欧美时尚款式，40余万<br />
                  颗全球美钻资源 </p></td>
              <td width="25%" valign="top"><p>3. 更高品质</p>
                  <p>&nbsp;</p>
                <p>世界三大品牌Cartier（卡地亚）、<br />
                  Tiffany&amp;Co（蒂凡尼）、<br />
                  BVLGARI（宝格丽）的钻石供应商<br />
                  ——De Beers首席看货商，为九钻<br />
                  直供顶级切工美钻</p></td>
              <td width="25%" valign="top"><p>4. 更安全 更方便</p>
                  <p>&nbsp;</p>
                <p>提供GIA-国证双证双保险，<br />
                  体验店和在线客服一对一专<br />
                  业顾问服务，更可享受货到<br />
                  付款服务，鼠标一点，便捷<br />
                  到家</p></td>
            </tr>
          </table>
        </div>
      </div>


</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cphTemplate">
</asp:Content>      
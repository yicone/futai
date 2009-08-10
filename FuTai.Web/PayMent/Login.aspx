<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FuTai.Web.LoginIn.Login" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphHead">
<link type="text/css" rel="stylesheet" href="/style/custom.css" />
<link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript">
        $(document).ready(function() {

    });
    </script> 
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphContent">
<div class="custom_main1">
      	<p class="cartStep">结算步骤：<span class="redfont1">登录/注册</span> &gt; 填写收获信息 &gt; 支付 &gt; 订购成功</p>
      	<asp:PlaceHolder ID="ph_Login" runat="server" Visible="true">
        <div class="reg_leftbox">
        <div class="box1 cartBox">
          <h2><span>用户登录 (登录/注册后才能继续操作)：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td colspan="2"><p>已注册用户请从这里登录。 <br />
                  登录后享受更多优惠和丰厚的积分。 </p>                </td>
              </tr>
              <tr>
                <td width="23%"><p>E-mail或昵称： </p>                </td>
                <td width="77%"><label>
                  <input type="text" name="textfield" id="textfield" />
                </label></td>
              </tr>
              <tr>
                <td>登录密码：</td>
                <td><input type="text" name="textfield2" id="textfield2" /></td>
              </tr>
              <tr>
                <td height="70" colspan="2" align="center"><input type="button" name="button4" id="button4" class="btn1Style" value=" 登 录 " onclick="location='InfoDesposite.aspx'" /></td>
              </tr>
            </table>
            <div class="inner_hr2"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td><p>如果您是支付宝会员，也可以点击以下按钮登录：</p></td>
              </tr>

              <tr>
                <td height="70" align="center"><input type="submit" name="button2" id="button2" class="btn1Style" value=" 支付宝用户登录 " /></td>
              </tr>
            </table>
          </div>
        </div>
        </div>
        <div class="reg_rightbox">
        <div class="box1 cartBox">
          <h2><span>用户登录 (登录/注册后才能继续操作)：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td width="29%" align="right" valign="top">您的E-mail地址：                                    * <br />                  <br /></td>
                <td width="71%"><p>
                    <input type="text" name="textfield3" id="textfield3" />
                </p>
                <p class="grayfont1">将作为您以后的登录账号,该信息不会在页面上显示。</p></td>
              </tr>
              <tr>
                <td align="right" valign="top">设置密码：                                    * <br />                  <br /></td>
                <td><p>
                    <input type="text" name="textfield4" id="textfield4" />
                </p>
                <p class="grayfont1">密码由英文字母、数字、符号组成，长度6-30位。</p></td>
              </tr>
              <tr>
                <td align="right" valign="top">确认密码：                                    * <br /></td>
                <td><input type="text" name="textfield5" id="textfield5" />
                  <span class="grayfont1">请再次输入密码。</span></td>
              </tr>
              <tr>
                <td align="right" valign="top">设置昵称：                                    * <br /></td>
                <td><p>
                    <input type="text" name="textfield6" id="textfield6" />
                </p>
                <p class="grayfont1">希望我们怎么称呼您,也是您在论坛发帖时显示的名称。</p>                </td>
              </tr>
              <tr>
                <td align="right" valign="top">验证码：                                    * <br /></td>
                <td><p>
                    <input type="text" name="textfield7" id="textfield7" />
                </p>
                <p class="grayfont1">请输入图片中的字母或数字 看不清楚，换一张</p></td>
              </tr>
              <tr>
                <td colspan="2" align="center"><label>
                  <input type="checkbox" name="checkbox" id="checkbox" />
                </label>
                我已阅并同意《九钻珠宝网用户协议》 和 《用户隐私保护声明》 </td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="button" name="button3" id="button3" class="btn1Style" value=" 创建用户 " onclick="location='InfoDesposite.aspx'"  /></td>
              </tr>
            </table>
          </div>
        </div>
        </div>
        <div class="clearfix"></div>
 </asp:PlaceHolder>
 <asp:PlaceHolder ID="ph_LoginSub" runat="server" Visible="false">
    <div class="box1 cartBox">
          <h2><span>收货人信息：</span></h2>
          <div class="cont">
            <div class="clearfix"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td width="131" align="right">您的E-mail / 会员卡号：                                    </td>
                <td width="160"><label>
                  <input type="text" name="textfield5" id="text1" />
                <br />
                </label></td>
                <td width="279">没有注册？
                  <input type="submit" name="button5" id="button5" class="btn1Style" value="支付宝会员登录" />                  
                <br /></td>
              </tr>
              <tr>
                <td align="right">&nbsp;</td>
                <td colspan="2">会员卡号就是您会员卡后面的号码，您也可以通过注册时所选的邮箱地址登录。<br /></td>
              </tr>
              <tr>
                <td align="right">登录密码：</td>
                <td><input type="text" name="textfield7" id="text2" /></td>
                <td> 忘记密码？<br /></td>
              </tr>
              <tr>
                <td align="right">记住我： </td>
                <td colspan="2"><label>
                  <select name="select" id="select">
                    <option>关闭浏览器就自动退出</option>
                  </select>
                </label></td>
              </tr>
              <tr>
                <td align="right">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td align="right">&nbsp;</td>
                <td colspan="2"><input type="submit" name="button2" id="Submit1" class="btn1Style" value=" 提交 " />
                <input type="submit" name="button4" id="Submit2" class="btn1Style" value="清空内容" /></td>
              </tr>
            </table>
            </div>
        </div>
 </asp:PlaceHolder>
        <div class="inner_bottomcont">
          <h4 class="cartBtnbox">福泰的企业精神——创新！分享！快乐！</h4>
            <div class="inner_hr"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable2">
  <tr>
    <td width="25%" valign="top"><p>1. 更低价格</p>
      <p>&nbsp;</p>
      <p>同类产品仅是传统珠宝店的3-7折，<br />
        其他网站的7-9折      </p></td>
    <td width="25%" valign="top"> <p>2. 更多选择</p>
      <p>&nbsp;</p>
      <p>数千款欧美时尚款式，40余万<br />
        颗全球美钻资源      </p></td>
    <td width="25%" valign="top"> <p>3. 更高品质</p>
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
        <div class="clearfix"></div>
      </div>
      <div class="hr"></div>
      <div class="clearfix"></div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cphTemplate">
    
</asp:Content>
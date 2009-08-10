<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="InfoDesposite.aspx.cs" Inherits="FuTai.Web.PayMent.InfoDesposite" %>

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
      	<p class="cartStep">结算步骤：登录/注册 &gt; <span class="redfont1">填写收获信息</span> &gt; 支付 &gt; 订购成功</p>
      	<asp:PlaceHolder ID="ph_AddAddress" runat="server" Visible="false">
      	    <div class="box1 cartBox">
          <h2><span>收货人信息：</span></h2>
          <div class="cont">
            <div class="clearfix"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td width="119" align="right">收货人信息：</td>
                <td width="461"><label>
                  <input type="checkbox" name="checkbox" id="checkbox1" />
                中国邮政EMS或者联邦快递（由福泰免费提供）<br />
                </label></td>
              </tr>
              <tr>
                <td align="right">&nbsp;</td>
                <td>我要到  
                  <label>
                  <select name="select" id="select1">
                    <option>上海体验中心</option>
                                    </select>
                  </label>                       
                取货</td>
              </tr>
            </table>
            <div class="inner_hr"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              
              <tr>
                <td width="120" align="right"><p>收货地址：</p>                </td>
                <td width="460"><p> 
                  <label>
                  <input type="checkbox" name="checkbox2" id="checkbox13" />
                  </label>
                  使用其他地址<br />
                </p>                </td>
              </tr>
              <tr>
                <td align="right" valign="top"><p>地区：                   </p>                </td>
                <td><p>
<label>
<select name="select2" id="select3">
  <option>上海</option>
</select>
</label>                  
省
<select name="select3" id="select4">
  <option>上海</option>
</select>               
市               
<select name="select4" id="select5">
  <option>上海</option>
</select>
区 * <br />
                </p>                </td>
              </tr>
              <tr>
                <td align="right" valign="top">邮政编码：             *</td>
                <td><label>
                  <input type="text" name="textfield" id="text1" />
                </label></td>
              </tr>
              <tr>
                <td align="right" valign="top"><p>街道地址：                                                                             *<br />
                </p>                </td>
                <td><p>
                  <input type="text" name="textfield2" id="text2" />
                  <br />
                </p>                </td>
              </tr>
              <tr>
                <td align="right" valign="top"><p>收货人：                     *             </p>                </td>
                <td><input type="text" name="textfield3" id="text3" />
                <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top">联络电话：                     *</td>
                <td><input type="text" name="textfield4" id="text4" />                  <br /></td>
              </tr>
            </table>
            <div class="inner_hr"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td colspan="2" align="center"><p>我的发票：我们的每产品都附发票，为保护您的消费权益，请认真填写发票抬头并妥善保管。<br />
                </p>                  </td>
              </tr>
              <tr>
                <td width="120" align="right" valign="top"><p>我的发票抬头：</p></td>
                <td width="460"><p>
                    <label>
                    <input name="textfield6" type="text" id="textfield9" size="20" />
                  </label><br />
                </p></td>
              </tr>
            </table>
            <div class="inner_hr"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td width="120" align="right" valign="top"><p>备注信息：</p></td>
                <td width="460"><p>
                    <label>
                    <textarea name="textarea" id="textarea1" cols="45" rows="5"></textarea>
                  </label>
                  <br />
                </p></td>
              </tr>
              <tr>
                <td height="60" colspan="2" align="center">
                  <input type="submit" name="button3" id="Submit1" class="btn1Style" value="提交订单" />                </td>
              </tr>
            </table>
          </div>
        </div>
      	</asp:PlaceHolder>
      	<asp:PlaceHolder runat="server" ID="ph_FillAddress">
        <div class="box1 cartBox">
          <h2><span>请填写收货人信息：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="3">
              <tr>
                <td width="27%" align="right">收货人姓名：</td>
                <td width="19%"><label>
                  <input type="text" name="textfield" id="textfield" />
                </label></td>
                <td width="54%">* 请填写您的真实姓名，以便我们能准时将货品送到您手中 </td>
              </tr>
              <tr>
                <td align="right"> 性别：</td>
                <td><label>
                  <select name="select" id="select">
                    <option>男</option>
                                    </select>
                </label></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right"> 手机：</td>
                <td><input type="text" name="textfield3" id="textfield3" /></td>
                <td>* 请留下在工作时间能联系到您的电话 </td>
              </tr>
              <tr>
                <td align="right"> 电话：</td>
                <td><input type="text" name="textfield4" id="textfield4" /></td>
                <td> 请留下您的手机或其他电话，确保及时与您取得联系 </td>
              </tr>
              <tr>
                <td align="right"> 省份：</td>
                <td><input type="text" name="textfield6" id="textfield6" /></td>
                <td>* </td>
              </tr>
              <tr>
                <td align="right"> 城市：</td>
                <td><input type="text" name="textfield5" id="textfield5" /></td>
                <td>* </td>
              </tr>
              <tr>
                <td align="right"> 地址：</td>
                <td><input type="text" name="textfield7" id="textfield7" /></td>
                <td>* 请认真填写您的发货地址，以便准确递送 </td>
              </tr>
              <tr>
                <td align="right"> 邮编：</td>
                <td><input type="text" name="textfield8" id="textfield8" /></td>
                <td>* 如果邮编有误，送货时间将可能被延误2-3天 </td>
              </tr>
              <tr>
                <td align="right" valign="top"> 特殊要求：</td>
                <td colspan="2"><label>
                  <textarea name="textarea" id="textarea" cols="60" rows="5"></textarea>
                </label></td>
              </tr>
              <tr>
                <td align="right" valign="top">&nbsp;</td>
                <td colspan="2"><input type="submit" name="button4" id="button4" class="btn1Style" value=" 保存收货人信息 " /></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="box1 cartBox">
          <h2><span>请填写收货方式：</span></h2>
          <div class="cont">
            <table border="0" align="center" cellpadding="0" cellspacing="3">
              <tr>
                <td><input type="checkbox" name="checkbox2" id="checkbox2" /></td>
                <td>快递送货上门</td>
                <td width="165" height="60">&nbsp;</td>
                <td><input type="checkbox" name="checkbox" id="checkbox" /></td>
                <td> 体验中心取货</td>
              </tr>
            </table>
            <div class="inner_hr"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td height="40" colspan="2"><strong>普通快递送货上门 </strong></td>
              </tr>
              <tr>
                <td align="right">送货上门时间：</td>
                <td><label>
                  <select name="select2" id="select2">
                    <option>不限工作日休息日 </option>
                </select>
                </label></td>
              </tr>
              <tr>
                <td align="right" valign="top">特别提示：</td>
                <td>1. 货到付款仅限在列表中标记   的产品, 如您的订单礼含有其他商品, 则不能选择货到付款<br />
2. 款到发货产品联邦快递能到的地址采用联邦快递，其他将采用中国邮政EMS送达</td>
              </tr>
              <tr>
                <td align="right" valign="top">&nbsp;</td>
                <td><input type="submit" name="button5" id="button5" class="btn1Style" value=" 保存收货方式 " /></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="box1 cartBox">
          <h2><span>请填写收货方式：</span></h2>
          <div class="cont">
            <table border="0" align="center" cellpadding="0" cellspacing="3">
              <tr>
                <td><input type="checkbox" name="checkbox3" id="checkbox3" /></td>
                <td width="120" height="60">货到付款</td>
                <td><input type="checkbox" name="checkbox3" id="checkbox4" /></td>
                <td width="120">网上支付</td>
                <td><input type="checkbox" name="checkbox3" id="checkbox4" /></td>
                <td width="120">银行汇款</td>
                <td><input type="checkbox" name="checkbox3" id="checkbox4" /></td>
                <td width="120">邮局汇款 </td>
              </tr>
            </table>
            <div class="inner_hr"></div>
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td height="40" colspan="2"><strong>您需要先拥有一张已开通网上支付功能的银行卡 </strong></td>
              </tr>
              <tr>
                <td align="right"><input type="checkbox" name="checkbox4" id="checkbox5" /></td>
                <td><label> 交通银行 <br />
                </label></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox5" id="checkbox6" /></td>
                <td>招商银行 <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox6" id="checkbox7" /></td>
                <td>工商银行 <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox7" id="checkbox8" /></td>
                <td>建设银行 <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox8" id="checkbox9" /></td>
                <td>快钱 <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox9" id="checkbox10" /></td>
                <td>支付宝 <br /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><input type="checkbox" name="checkbox10" id="checkbox11" /></td>
                <td>财付通 </td>
              </tr>
              <tr>
                <td align="right" valign="top">&nbsp;</td>
                <td><input type="submit" name="button6" id="button6" class="btn1Style" value="保存付款方式" /></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="box1 cartBox">
          <h2><span>请填写收货方式：</span></h2>
          <div class="cont">
            <table width="600" border="0" align="center" cellpadding="5" cellspacing="0">
              
              <tr>
                <td align="right">发票抬头:</td>
                <td height="60"><input type="text" name="textfield2" id="textfield2" /></td>
              </tr>

              <tr>
                <td align="right" valign="top">&nbsp;</td>
                <td><input type="submit" name="button7" id="button7" class="btn1Style" value="保存发票抬头" /></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="box1 cartBox">
          <h2><span>请填写收货方式：</span></h2>
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
            <div class="clearfix"></div>
            <table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td height="30" align="right">总计产品共<span class="redfont1"><strong>2</strong></span>件          商品总价：¥6510.00<br /></td>
              </tr>
              <tr>
                <td height="30" align="right">运费：¥0.00<br /></td>
              </tr>
              <tr>
                <td height="30" align="right">礼券折减：¥0<br /></td>
              </tr>
              <tr>
                <td height="30" align="right">您需要支付：<strong class="redfont1">¥6510.00</strong></td>
              </tr>
              <tr>
                <td height="30" align="right"><input type="submit" name="button8" id="button8" class="btn1Style" value="使用礼券" /></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="clearfix"></div>
        <table border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><label>
              <input type="checkbox" name="checkbox12" id="checkbox12" />
            </label></td>
            <td>我已阅并同意 《福泰购物协议》</td>
            <td><input type="submit" name="button9" id="button9" class="btn1Style" value="提交订单" /></td>
          </tr>
        </table>
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

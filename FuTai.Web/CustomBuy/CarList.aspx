<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="CarList.aspx.cs" Inherits="FuTai.Web.CustomBuy.CarList" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphHead">
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            var _carlist;
            GetCarList();
        });
        function GetCarList() {
            var r = BaseAjax.GetCarList();
            if (!r.error) {
                _carlist = r.value;
                if (_carlist && _carlist.length!=0) {
                    var totol=0;
                    for (var i = 0; i < _carlist.length; i++) {
                        totol += parseInt(parseInt(_carlist[i][3]) * parseInt(_carlist[i][2]) * parseInt(_carlist[i][4])/100);
                    }
                        renderTemplate('carlist', { 'clist': _carlist, 'cBegin': 0, 'cSize': _carlist.length,'total':totol });
                }
                else {
                    $("#carlist").html('<p style="font-size:14px; text-align:center; padding:20px 0px 20px 0px">当前购物车为空</p>');
                }  
            }
        }
        function DelPro(proid) {
            var result = BaseAjax.DelCarList(proid);
            if (!result.error) {
                GetCarList();
                $("#CarListNum").text(parseInt($("#CarListNum").text())-1);
            }
        }
        function DingMake()
        {
            if (_carlist.length==0 || _carlist==null)
            {
                alert("您的购物车没有任何产品");
                location.href="CarList.aspx";
                return false;
            }
            if (CheckInput())
            {
                var name=$("#mname").val();
                var sex=$("#msel").val()==0?true:false;
                var phone=$("#mphone").val();
                var scity=$("#scity").val();
                var city=$("#city").val();
                var address=$("#maddress").val();
                var mailcode=$("#mcode").val();
                var speical=$("#spquest").val();
                var dr=BaseAjax.MakeOrder(name,sex,phone,scity,city,address,mailcode,speical);
                if (!dr.error){
                    BaseAjax.ClearCar();
                    $("#Bcar").hide();
                    $("#Bform").hide();
                    $("#BResult").show();
                }
                else
                    alert(dr.error.Message);
            }
            else
                alert("请按提示正确填写表单信息，表单信息不能为空！");
        }
        function CheckInput()
        {
            var name=$("#mname").val();
            var sex=$("#msel").val();
            var phone=$("#mphone").val();
            var scity=$("#scity").val();
            var city=$("#city").val();
            var address=$("#maddress").val();
            var mailcode=$("#mcode").val();
            var speical=$("#spquest").val();
            if (name=="" || phone=="" || scity=="" || city=="" || address=="" || mailcode=="" || speical=="")
                return false;
            else
                return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphContent">
    <div class="body">
      <div class="custom_main1">
      	<p id="Step" class="cartStep" runat="server">结算步骤：<span class="redfont1">登录/注册</span> &gt; 填写收获信息 &gt; 支付 &gt; 订购成功</p>
   <asp:PlaceHolder ID="MakeTicket" runat="server" Visible="false" >
      	<p class="cartStep">结算步骤：登录/注册 &gt; <span class="redfont1">填写收获信息</span> &gt; 支付 &gt; 订购成功</p>
      	<div id="Bform" class="box1 cartBox">
          <h2><span>请填写收货人信息：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="3">
              <tr>
                <td width="27%" align="right">收货人姓名：</td>
                <td width="19%"><label>
                  <input type="text" name="textfield" id="mname" maxlength="10" />
                </label></td>
                <td width="54%">* 请填写您的真实姓名，以便我们能准时将货品送到您手中 </td>
              </tr>
              <tr>
                <td align="right"> 性别：</td>
                <td><label>
                  <select name="select" id="msel">
                    <option value="0" selected>男</option>
                    <option value="1">女</option>
                  </select>
                </label></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right"> 手机/电话：</td>
                <td><input type="text" name="textfield3" id="mphone" maxlength="15" /></td>
                <td>* 请留下在工作时间能联系到您的电话 </td>
              </tr>
              <tr>
                <td align="right"> 省份：</td>
                <td><input type="text" name="textfield6" id="scity" maxlength="20" /></td>
                <td>* </td>
              </tr>
              <tr>
                <td align="right"> 城市：</td>
                <td><input type="text" name="textfield5" id="city" maxlength="20" /></td>
                <td>* </td>
              </tr>
              <tr>
                <td align="right"> 地址：</td>
                <td><input type="text" name="textfield7" id="maddress" maxlength="50" /></td>
                <td>* 请认真填写您的发货地址，以便准确递送 </td>
              </tr>
              <tr>
                <td align="right"> 邮编：</td>
                <td><input type="text" name="textfield8" id="mcode" maxlength="10" /></td>
                <td>* 如果邮编有误，送货时间将可能被延误2-3天 </td>
              </tr>
              <tr>
                <td align="right" valign="top"> 特殊要求：</td>
                <td colspan="2"><label>
                  <textarea name="textarea" id="spquest" cols="60" rows="5"></textarea>
                </label></td>
              </tr>
              <tr>
                <td align="right" valign="top">&nbsp;</td>
                <td colspan="2"><input type="button" name="button4" id="button4" class="btn1Style" value="生成订单" onclick="DingMake()" /></td>
              </tr>
            </table>
          </div>
        </div>
    </asp:PlaceHolder>
        <div id="Bcar" class="box1 cartBox">
          <h2><span>您选购的商品如下：</span></h2>
          <div id="carlist" class="cont">
               <!---购物车模板---->  
          </div>
        </div>
        <div id="BResult" class="box1 cartBox" style="display:none">
            <h2><span>生成订单成功！</span></h2>
              <div class="cont">
                   <p style="text-align:center; padding-top:80px; padding-bottom:80px;">您的订单已成功提交！我们会在2个工作日内与您联系。<br />
                    您也可以拨打我们的全国客服热线40088-10025。
                    <br /><br /><br /><br />
                    <a href="/Default.aspx">返回首页</a>
                   </p>
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
      <div class="hr"></div>
      <div class="clearfix"></div>
  </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cphTemplate">
    <textarea id="carlist-template" style="display:none">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
              <tr>
                <th>类型</th>
                <th>图片</th>
                <th>产品编号</th>
                <th>数量</th>
                <th>市场价</th>
                <th>福泰价</th>
                <th>&nbsp;</th>
              </tr>
     {#foreach $T.clist as rc begin=$T.cBegin count=$T.cSize }
              <tr>
                <td>现货</td>
                <td><img src="../images/productimg/{$T.rc[0]}.jpg" width="70" height="70" /></td>
                <td>{$T.rc[1]}</td>
                <td>{$T.rc[2]}</td>
                <td>{parseInt($T.rc[3])}  {#if $T.rc[2]!="1"}X{$T.rc[2]}={parseInt($T.rc[3])*parseInt($T.rc[2])}{#/if}  </td>
                <td>{parseInt(parseInt($T.rc[3])*parseInt($T.rc[4])/100)} {#if $T.rc[2]!="1"}X{$T.rc[2]}={parseInt(parseInt($T.rc[3])*parseInt($T.rc[4])*parseInt($T.rc[2])/100)}{#/if}</td>
                <td><label>
                  <input type="button" name="button2" id="button2" class="btn1Style" value="删 除" onclick="DelPro('{$T.rc[1]}')" />
                </label></td>
              </tr>
      {#/for}        
              <tr>
                <th colspan="7" align="right">总计产品共 {$T.cSize} 件      <span class="redfont1"> ¥{$T.total} </span></th>
              </tr>
            </table>
            <p class="More cartBtnbox"><input type="button" name="button3" id="button3" class="btn1Style" value="继续购物" onclick='location="/Default.aspx"' />&nbsp;&nbsp;<input type="button" name="button3" id="button3" class="btn1Style" value="填写订单" runat="server" onclick="location='CarList.aspx?action=MakeTicket'" /></p>
            <div class="clearfix"></div>
    </textarea>
</asp:Content>


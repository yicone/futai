<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master"  CodeBehind="CustomBuyCzuan.aspx.cs" Inherits="FuTai.Web.CustomBuy.CustomBuy" %>
<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" ID="Content1" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript" src="../js/CustomSear.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

    });
    </script> 
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphContent">
    <asp:PlaceHolder runat="server" ID="Ph_First" >
      <div class="custom_main1">
      		<div class="step1_left">
            	<img src="../images/custom_img1.jpg" />
            </div>
            <div class="step1_right"><img src="../images/custom_img2.jpg" />
            <asp:LinkButton NavigateUrl="#" ID="Start" runat="server" OnClick="Link_Start"><img src="../images/step1_btn.gif" class="getCustom" /></asp:LinkButton></div>
            <div class="clearfix"></div>
      </div>
      <div class="hr"></div>
      <div class="clearfix"></div>
</asp:PlaceHolder>
<asp:PlaceHolder runat="server" ID="Ph_Second" Visible="false">
    	<uc1:ucLeft ID="ucLeft" runat="server" />
   	  <div class="inner_main">
      <p align="right"><img src="../images/custom_step1.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选钻石</p>
            
   	</div>
        	<div class="box1">
       	    <h2><p>搜不到您要的钻石? 福泰帮您<a href="#" class="redfont1">全球搜钻</a></p><span>站内搜钻</span></h2>
                <div class="cont">
                	<table width="723" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">形状</span></td>
        <td width="80%"><ul class="list">
			<li><a href="#" class="nowimg">圆形</a></li>
			<li><a href="#" class="norimg">异形</a></li>
		</ul>
		<div class="clear"></div></td>
      </tr>
    </table></td>
    <td height="74" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">颜色</span></td>
        <td width="80%"><img src="../images/XXbar_01.jpg" width="268" height="74" border="0" usemap="#Color" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="50%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">克拉</span></td>
        <td width="80%"><img src="../images/lxxbar_01.jpg" width="267" height="74" border="0" usemap="#KLK" /></td>
      </tr>
    </table></td>
    <td width="50%" height="74" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">净度</span></td>
        <td width="80%"><img src="../images/XXbar_02.jpg" width="268" height="74" border="0" usemap="#JD" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">价格</span></td>
        <td width="80%"><img src="../images/lxxbar_02.jpg" width="268" height="74" border="0" usemap="#Price" /></td>
      </tr>
    </table></td>
    <td height="74" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">切工</span></td>
        <td width="80%"><img src="../images/XXbar_03.jpg" width="268" height="74" border="0" usemap="#qie" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">荧光</span></td>
        <td width="80%"><img src="../images/lxxbar_03.jpg" usemap="#YD" /></td>
      </tr>
    </table></td>
    <td height="74" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">抛光</span></td>
        <td width="80%"><img src="../images/XXbar_04.jpg" usemap="#PaoLight" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">地区</span></td>
        <td width="80%"><img src="../images/lxxbar_04.jpg" width="268" /></td>
      </tr>
    </table></td>
    <td height="74" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">对称</span></td>
        <td width="80%"><img src="../images/XXbar_05.jpg" usemap="#DC" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="top"><input type="button" class="btn1Style" value="手动输入条件" />&nbsp;&nbsp;
      <input type="button" class="btn1Style" value="简化条件" />&nbsp;&nbsp;
      <input type="button" class="btn1Style" value="重置" />
      &nbsp;&nbsp;快速搜索：<a href="#" class="redl">克拉钻</a> <a href="#" class="redl">3EX钻</a> <a href="#" class="redl">30分钻</a> <a href="#" class="redl">50分钻</a> <a href="#" class="redl">国检钻石</a></td>
    </tr>
</table>

                </div>
            </div>
            <div class="hr"></div>
        	<div class="box1">
        	  <h2><span>搜索结果:(共搜到0颗钻石)</span></h2>
        	  <div class="cont">
              	<ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button4" id="button12" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
                 <tr>
                   <th>选择<br /></th>
                   <th>货号</th>
                   <th> 重量</th>
                   <th> 净度</th>
                   <th> 颜色</th>
                   <th> 切工        </th>
                   <th>抛光</th>
                   <th> 对称</th>
                   <th> 证书        </th>
                   <th>市场价        </th>
                   <th>福泰价      </th>
                   <th>明细</th>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F                  </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA                </td>
                   <td>¥8400               </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <th colspan="12" align="right">总计产品共 1 件 <span class="redfont1"> ¥31240.00 </span></th>
                 </tr>
               </table>
               <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="textfield" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button5" id="button13" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
			  </div>
      	  </div>
   	  </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
</asp:PlaceHolder>
<asp:PlaceHolder ID="Ph_SecondSub" runat="server" Visible="false">
      <uc1:ucLeft ID="ucLeft2" runat="server" />
   	  <div class="inner_main">
      <p align="right"><img src="../images/custom_step1.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选钻石</p>
            
   	</div>
        	<div class="box1">
       	    <h2><p>搜不到您要的钻石? 福泰帮您<a href="#" class="redfont1">全球搜钻</a></p><span>站内搜钻</span></h2>
                <div class="cont">
                <table width="100%" border="0" cellspacing="10" cellpadding="0" class="custsearch_table">
                  <tr>
                    <th>形状</th>
                    <td width="300"><label>
                      <input type="checkbox" name="checkbox2" id="checkbox2" />
                    </label>                      圆形      
                    <input type="checkbox" name="checkbox3" id="checkbox3" />
                    异形</td>
                    <th>颜色</th>
                    <td><label>
                      <input type="checkbox" name="checkbox4" id="checkbox4" />
                      J
                      <input type="checkbox" name="checkbox5" id="checkbox5" />
                    I           
                    <input type="checkbox" name="checkbox6" id="checkbox6" />
                    H         
                    <input type="checkbox" name="checkbox7" id="checkbox7" />
                    G         
                    <input type="checkbox" name="checkbox8" id="checkbox8" />
                    F         
                    <input type="checkbox" name="checkbox9" id="checkbox9" />
                    E          
                    <input type="checkbox" name="checkbox10" id="checkbox10" />
                    D </label></td>
                  </tr>
                  <tr>
                    <th>克拉</th>
                    <td>从
                      <label>
                        <input name="textfield2" type="text" id="textfield2" size="5" />
                    到
                    <input name="textfield3" type="text" id="textfield3" size="5" />
                    </label></td>
                    <th>净度</th>
                    <td><input type="checkbox" name="checkbox11" id="checkbox11" />
J
  <input type="checkbox" name="checkbox11" id="checkbox12" />
I
<input type="checkbox" name="checkbox11" id="checkbox13" />
H
<input type="checkbox" name="checkbox11" id="checkbox14" />
G
<input type="checkbox" name="checkbox11" id="checkbox15" />
F
<input type="checkbox" name="checkbox11" id="checkbox16" />
E
<input type="checkbox" name="checkbox11" id="checkbox17" />
D </td>
                  </tr>
                  <tr>
                    <th>价格</th>
                    <td>从
                      <label>
                        <input name="textfield4" type="text" id="textfield4" size="5" />
                        到
  <input name="textfield4" type="text" id="textfield5" size="5" />
                    </label></td>
                    <th>切工</th>
                    <td><input type="checkbox" name="checkbox12" id="checkbox18" />
J
  <input type="checkbox" name="checkbox12" id="checkbox19" />
I
<input type="checkbox" name="checkbox12" id="checkbox20" />
H
<input type="checkbox" name="checkbox12" id="checkbox21" />
G
<input type="checkbox" name="checkbox12" id="checkbox22" />
F
<input type="checkbox" name="checkbox12" id="checkbox23" />
E
<input type="checkbox" name="checkbox12" id="checkbox24" />
D </td>
                  </tr>
                  <tr>
                    <td colspan="4"><asp:Button ID="Change_Manel" runat="server" CssClass="btn1Style" Text="滑块输入搜索" OnClick="ChangeType" />
                      <input type="button" name="button7" id="button15" class="btn1Style" value="详细条件" />
                      <input type="button" name="button8" id="button16" class="btn1Style" value="重置" />
                    &nbsp;&nbsp;&nbsp;快捷搜索：<a href="#">克拉钻</a> <a href="#">3EX钻</a> <a href="#">30分钻</a> <a href="#">50分钻</a> <a href="#">国检钻石 </a></td>
                  </tr>
                </table>
              </div>
            </div>
            <div class="hr"></div>
        	<div class="box1">
        	  <h2><span>搜索结果:(共搜到0颗钻石)</span></h2>
        	  <div class="cont">
              	<ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button4" id="Submit1" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
                 <tr>
                   <th>选择<br /></th>
                   <th>货号</th>
                   <th> 重量</th>
                   <th> 净度</th>
                   <th> 颜色</th>
                   <th> 切工        </th>
                   <th>抛光</th>
                   <th> 对称</th>
                   <th> 证书        </th>
                   <th>市场价        </th>
                   <th>福泰价      </th>
                   <th>明细</th>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox1" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox2" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox3" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox4" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox5" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox6" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox7" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox8" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button"  class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox9" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA </td>
                   <td>¥8400 </td>
                   <td>¥4670</td>
                   <td><input type="button"  class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <td><label>
                     <input type="checkbox" name="checkbox" id="checkbox10" />
                   </label></td>
                   <td>123123</td>
                   <td> 0.350</td>
                   <td> VS2</td>
                   <td> F                  </td>
                   <td>EX </td>
                   <td> VG</td>
                   <td> EX</td>
                   <td> GIA                </td>
                   <td>¥8400               </td>
                   <td>¥4670</td>
                   <td><input type="button" class="btn1Style" value="详细" onclick="location='/CustomBuy/CustomBuyCzuan.aspx?proid=1'" /></td>
                 </tr>
                 <tr>
                   <th colspan="12" align="right">总计产品共 1 件 <span class="redfont1"> ¥31240.00 </span></th>
                 </tr>
               </table>
               <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="text1" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button5" id="Submit12" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
			  </div>
      	  </div>
   	  </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
</asp:PlaceHolder>
<asp:PlaceHolder runat="server" ID="Ph_Pinfo" Visible="false">
    <uc1:ucLeft ID="ucLeft3" runat="server" />
   	  <div class="inner_main">
      <p align="right"><img src="../images/custom_step2.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选钻石 &gt; 产品信息 </p>
            
       	</div>
            <div class="hr"></div>
            <div class="box1">
           	  <h2><span>1.002克拉&lt;M色SI净度裸钻</span></h2>
            <div class="cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="302" valign="top"><p><img src="../images/custom_productimg2.jpg" width="288" height="214" /></p>
                  <p>&nbsp;</p>
                  <p>
                    <input type="submit" name="button4" id="Submit13" class="btn1Style" value="发送给好友" />
                    <input type="submit" name="button5" id="Submit14" class="btn1Style" value="收藏" />
                  </p></td>
                  <td width="275" valign="top"><p>市场价：¥54000.00 <br />
                    福泰价：¥30000.00 ( 会员折扣 )<br />
                    <br />
                  </p>
                    <p> <strong>主要参数: </strong><br />
                      钻石重量：1.002克拉    净度：SI <br />
                  钻石切工：             颜色：&lt;M<br />
                  <br />
                  <strong>鉴定机构: </strong><br />
国检</p>
                  <p>&nbsp;</p>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="center"><a href="/ProduceCart.aspx"><img src="../images/custom_btn1.jpg" width="90" height="21" /></a>&nbsp;&nbsp;<a href="/PayMent/InfoDesposite.aspx?type=yuding"><img src="../images/custom_btn2.jpg" width="90" height="21" /></a></td>
                    </tr>
                  </table>                   <p>&nbsp;</p>
                  <p>如何定制？ 联系福泰</p>
                  <p>&nbsp;</p>
                  <p>
                    <input type="submit" name="button3" id="Submit15" class="btn1Style" value="给商品留言" />
                    <input type="submit" name="button2" id="Submit16" class="btn1Style" value="联系福泰珠宝顾问" />
                  </p></td>
                  <td width="165" valign="top"><p><strong>您还可以：</strong></p>
                  <p>&nbsp;</p>
                  <table width="165" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><img src="../images/custom_listbtn1.jpg" width="165" height="75" /></td>
                    </tr>
                    <tr>
                      <td><img src="../images/custom_listbtn2.jpg" width="165" height="75" /></td>
                    </tr>
                    <tr>
                      <td><img src="../images/custom_listbtn3.jpg" width="165" height="77" /></td>
                    </tr>
                  </table>                  
                  <p>&nbsp;</p></td>
                </tr>
              </table>
            </div>
        </div>
        <div class="hr"></div>
        <div class="custom_leftbox">
        <div class="box1">
        <h2><span>1.002克拉&lt;M色SI净度裸钻</span></h2>
            <div class="cont">
              <table width="100%" border="0" cellspacing="10" cellpadding="0">
                <tr>
                  <td height="30"><p><strong> 鉴定证书编号:</strong> 2009I1274311900 </p>                  </td>
                </tr>
                <tr>
                  <td height="30"><p><strong>目前所在地: </strong>北京 </p>                  </td>
                </tr>
                <tr>
                  <td height="30"><p><strong>库存编号:</strong> Z09041811761 </p>                  </td>
                </tr>
                <tr>
                  <td><p><strong>主要参数: </strong></p>
                    <table width="400" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="50%" height="30">钻石重量：1.002克拉</td>
                        <td>钻石色泽：&lt;M色 </td>
                      </tr>
                      <tr>
                        <td height="30">钻石切工：</td>
                        <td>钻石净度：SI</td>
                      </tr>
                      <tr>
                        <td height="30">钻石形状：圆形</td>
                        <td>产品规格： - x mm </td>
                      </tr>
                    </table>                    </td>
                </tr>
                <tr>
                  <td><p><strong>完成度: </strong><br />
                    抛光： <br />
                    对称性： <br />
                  荧光： </p>                  </td>
                </tr>
                <tr>
                  <td><p><strong>细节比例: </strong></p>
                    <table width="400" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="50%" height="30">深度：</td>
                        <td>台面比例： </td>
                      </tr>
                      <tr>
                        <td height="30">冠面角：</td>
                        <td>冠高： </td>
                      </tr>
                      <tr>
                        <td height="30">底角：</td>
                        <td>底部深度： </td>
                      </tr>
                      <tr>
                        <td height="30">星形半面长度：</td>
                        <td>下星形半面长度： </td>
                      </tr>
                      <tr>
                        <td height="30">宝石底面 ：</td>
                        <td>腰围： </td>
                      </tr>
                    </table>                    
                  </td>
                </tr>
                <tr>
                  <td>如果您有任何问题，请联系我们的珠宝顾问：<br />
订购热线（免长途费）：400-700-2199 / 800-819-2199 在线珠宝客服 </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><input type="submit" name="button6" id="Submit17" class="btn1Style" value="直接购买" />
                    <input type="submit" name="button6" id="Submit18" class="btn1Style" value="发送给好友" />
                    <input type="submit" name="button7" id="Submit19" class="btn1Style" value="收藏" /></td>
                </tr>
              </table>
            </div>
        </div>
        </div>
        <div class="custom_rightbox">
        	<div class="box2">
            <p>什么是国检：<br />
    国家金银制品质量监督检验中心是唯一
一家由国家质量技术监督总局经过审查依法
授权的，通过机构审查认可(CAL) 、计量认
证(CMA) 、中国国家实验室认可(CNAL) "三
合一"评审，具有第三方公正地位的国家级贵
金属和宝玉石质量监督检验机构。
</p>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="hr"></div>  
        <div class="box1">
          <h2><span>该钻石可以定制以下款式</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="10" cellpadding="0">
              <tr>
                <td width="88"><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
                <td width="88"><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
                <td width="88"><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
              </tr>
              <tr>
                <td><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
                <td><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
                <td><img src="../images/custom_listitem.gif" width="88" height="88" /></td>
                <td>单钻钻石女诫</td>
              </tr>
            </table>
            <p align="right">
              <input type="submit" name="button8" id="Submit20" class="btn1Style" value="更多可定制款式" />
            </p>
          </div>
        </div>
   	  </div>
    	<div class="clearfix"></div>
      
</asp:PlaceHolder>

<map name="Color" id="Color">
  <area shape="rect" coords="8,0,42,42" href="javascript:CustomOpt.SetColor('J')" />
  <area shape="rect" coords="42,1,80,42" href="javascript:CustomOpt.SetColor('I')" />
  <area shape="rect" coords="80,1,115,42" href="javascript:CustomOpt.SetColor('H')" />
  <area shape="rect" coords="115,0,153,42" href="javascript:CustomOpt.SetColor('G')" />
  <area shape="rect" coords="153,1,187,42" href="javascript:CustomOpt.SetColor('F')" />
  <area shape="rect" coords="187,0,223,42" href="javascript:CustomOpt.SetColor('E')" />
  <area shape="rect" coords="223,0,258,43" href="javascript:CustomOpt.SetColor('D')" />
</map>
<map name="JD" id="JD">
  <area shape="rect" coords="9,1,59,43" href="javascript:CustomOpt.SetClarity('SI')" />
  <area shape="rect" coords="59,1,108,43" href="javascript:CustomOpt.SetClarity('VS')" />
  <area shape="rect" coords="108,1,157,43" href="javascript:CustomOpt.SetClarity('WS')" />
    <area shape="rect" coords="157,1,208,42" href="javascript:CustomOpt.SetClarity('IF')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetClarity('FL')" />
</map>
<map name="qie" id="qie">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetCut('P')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetCut('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetCut('G')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetCut('VG')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetCut('EX')" />
</map>
<map name="PaoLight" id="PaoLight">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetPolishing('P')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetPolishing('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetPolishing('G')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetPolishing('VG')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetPolishing('EX')" />
</map>
<map name="DC" id="DC">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetSymmetry('P')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetSymmetry('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetSymmetry('G')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetSymmetry('VG')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetSymmetry('EX')" />
</map>
<map name="YD" id="YD">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetFluorescence('N')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetFluorescence('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetFluorescence('M')" />
  <area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetFluorescence('S')" />
  <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetFluorescence('VS')" />
</map>
<map name="KLK" id="KLK">
  <area shape="rect" coords="8,2,36,42" href="javascript:CustomOpt.SetCarat(0.23,0.33)" />
  <area shape="rect" coords="37,2,61,42" href="javascript:CustomOpt.SetCarat(0.34,0.63)" />
  <area shape="rect" coords="62,2,88,42" href="javascript:CustomOpt.SetCarat(0.64,1)" />
  <area shape="rect" coords="124,2,162,42" href="javascript:CustomOpt.SetCarat(1.01,1.33)" />
  <area shape="rect" coords="162,1,203,43" href="javascript:CustomOpt.SetCarat(1.34,1.63)" />
  <area shape="rect" coords="88,2,123,41" href="javascript:CustomOpt.SetCarat(1.64,2)" />
  <area shape="rect" coords="203,1,257,43" href="javascript:CustomOpt.SetCarat(2.01,2.10)" />
</map>

<map name="Price" id="Price">
<area shape="rect" coords="9,1,21,43" href="javascript:CustomOpt.SetPrice(1410,25000)" />
<area shape="rect" coords="21,1,33,43" href="javascript:CustomOpt.SetPrice(25000,50000)"  />
<area shape="rect" coords="33,1,45,43" href="javascript:CustomOpt.SetPrice(50000,75000)"  />
<area shape="rect" coords="45,1,57,43" href="javascript:CustomOpt.SetPrice(75000,100000)"  />
<area shape="rect" coords="57,1,69,43" href="javascript:CustomOpt.SetPrice(100000,125000)"  />
<area shape="rect" coords="69,1,81,43" href="javascript:CustomOpt.SetPrice(125000,150000)"  />
<area shape="rect" coords="81,1,93,43" href="javascript:CustomOpt.SetPrice(150000,175000)"  />
<area shape="rect" coords="93,1,104,43" href="javascript:CustomOpt.SetPrice(175000,200000)"  />
<area shape="rect" coords="104,1,116,43" href="javascript:CustomOpt.SetPrice(200000,225000)"  />
<area shape="rect" coords="116,1,128,43" href="javascript:CustomOpt.SetPrice(225000,250000)"  />
<area shape="rect" coords="128,1,140,43" href="javascript:CustomOpt.SetPrice(250000,275000)"  />
<area shape="rect" coords="140,1,152,43" href="javascript:CustomOpt.SetPrice(275000,300000)"  />
<area shape="rect" coords="152,1,164,43" href="javascript:CustomOpt.SetPrice(300000,325000)"  />
<area shape="rect" coords="164,1,176,43" href="javascript:CustomOpt.SetPrice(325000,350000)"  />
<area shape="rect" coords="176,1,188,43" href="javascript:CustomOpt.SetPrice(350000,375000)"  />
<area shape="rect" coords="188,1,200,43" href="javascript:CustomOpt.SetPrice(375000,400000)"  />
<area shape="rect" coords="200,1,212,43" href="javascript:CustomOpt.SetPrice(400000,425000)"  />
<area shape="rect" coords="212,1,224,43" href="javascript:CustomOpt.SetPrice(425000,450000)"  />
<area shape="rect" coords="224,1,236,43" href="javascript:CustomOpt.SetPrice(450000,475000)"  />
<area shape="rect" coords="236,1,248,43" href="javascript:CustomOpt.SetPrice(475000,500000)"  />
<area shape="rect" coords="248,1,260,43" href="javascript:CustomOpt.SetPrice(500000,545000)"  />
</map>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master"  CodeBehind="CustomBuyCzuan.aspx.cs" Inherits="FuTai.Web.CustomBuy.CustomBuy" %>
<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<%@ Register src="../Controls/ucDataTable.ascx" tagname="ucDataTable" tagprefix="uc2" %>

<asp:Content ContentPlaceHolderID="cphHead" ID="Content1" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript" src="../js/CustomSear.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            if (getUrlParam("productType")=="Diamond" && getUrlParam("IsCustom")=="false")
                $(".Pstep").hide();
        });
    </script> 
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphContent">
    <asp:PlaceHolder runat="server" ID="Ph_First" >
      <div class="custom_main1">
      		<div class="step1_left">
            	<img src="../images/custom_img1.jpg" />
            </div>
            <div class="step1_right"><img src="../images/custom_img2.jpg" /><br />
                <asp:LinkButton NavigateUrl="#" ID="Start" runat="server" OnClick="Link_Start"><img src="../images/step1_btn.gif" class="getCustom" /></asp:LinkButton>
            </div>
            <div class="clearfix"></div>
      </div>
      <div class="hr"></div>
      <div class="clearfix"></div>
</asp:PlaceHolder>
<asp:PlaceHolder runat="server" ID="Ph_Second" Visible="false">
<script type="text/javascript">
    $(document).ready(function(){  
        var Price1=getUrlParam("price1");
        var Price2=getUrlParam("price2");
        if (Price1!=null && Price2!=null && !isNaN(Price1) && !isNaN(Price2) && Price2>Price1)
        {
            CustomOpt.PriceL=Price1;
            CustomOpt.PriceH=Price2;
            CustomMak.Search(CustomOpt);
        }
        else
        {
            CustomOpt.PriceL=0;
            CustomOpt.PriceH=545000;
            CustomMak.Search(CustomOpt);
        }
    });
</script>
<uc1:ucLeft ID="ucLeft" runat="server" />
   	  <div class="inner_main">
      <p class="Pstep" align="right"><img src="../images/custom_step1.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选钻石</p>
            
   	</div>
        	<div class="box1">
       	    <h2><p>搜不到您要的钻石? 福泰帮您<a href="#" class="redfont1">全球搜钻</a></p><span>站内搜钻</span></h2>
                <div class="cont">
                	<table width="704" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">形状</span></td>
        <td width="80%"><ul class="list">
			<li><a href="javascript:CustomOpt.SetModel('Circel')" class="nowimg">圆形</a></li>
			<li><a href="javascript:CustomOpt.SetModel('NoRule')" class="norimg">异形</a></li>
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
    <td colspan="2" align="left" valign="top"><asp:Button ID="ByHand" runat="server" CssClass="btn1Style" Text="手动输入条件" OnClick="ChangeType2" />&nbsp;&nbsp;
      <input type="button" class="btn1Style" value="重置" onclick="CustomOpt.InitPeo()" />
      &nbsp;&nbsp;<input type="button" class="btn1Style" value="查看全部" onclick="CustomOpt.InitPeo();CustomMak.Search(CustomOpt);" /></td>
    </tr>
</table>

                </div>
            </div>
            <div class="hr"></div>
            <uc2:ucDataTable ID="ucDataTable1" runat="server" />
   	  </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
</asp:PlaceHolder>
<asp:PlaceHolder ID="Ph_SecondSub" runat="server" Visible="false">
      <uc1:ucLeft ID="ucLeft2" runat="server" />
   	  <div class="inner_main">
      <p class="Pstep" runat="server" align="right"><img src="../images/custom_step1.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选钻石</p>
            
   	</div>
        	<div class="box1">
       	    <h2><p>搜不到您要的钻石? 福泰帮您<a href="#" class="redfont1">全球搜钻</a></p><span>站内搜钻</span></h2>
                <div id="ConList" class="cont">
                <table width="100%" border="0" cellspacing="10" cellpadding="0" class="custsearch_table">
                  <tr>
                    <th>形状</th>
                    <td width="300"><label>
                      <input type="checkbox" name="checkbox2" id="checkbox2" onclick="CustomOpt.SetModelHigh('Circel',this)" />
                    </label>                      圆形      
                    <input type="checkbox" name="checkbox3" id="checkbox3" onclick="CustomOpt.SetModelHigh('NoRule',this)" />
                    异形</td>
                    <th>颜色</th>
                    <td><label>
                      <input type="checkbox" name="checkbox4" id="checkbox4" onclick="CustomOpt.SetColorHigh('J',this)" />
                      J
                      <input type="checkbox" name="checkbox5" id="checkbox5" onclick="CustomOpt.SetColorHigh('I',this)" />
                    I           
                    <input type="checkbox" name="checkbox6" id="checkbox6" onclick="CustomOpt.SetColorHigh('H',this)" />
                    H         
                    <input type="checkbox" name="checkbox7" id="checkbox7" onclick="CustomOpt.SetColorHigh('G',this)" />
                    G         
                    <input type="checkbox" name="checkbox8" id="checkbox8" onclick="CustomOpt.SetColorHigh('F',this)" />
                    F         
                    <input type="checkbox" name="checkbox9" id="checkbox9" onclick="CustomOpt.SetColorHigh('E',this)" />
                    E          
                    <input type="checkbox" name="checkbox10" id="checkbox10" onclick="CustomOpt.SetColorHigh('D',this)" />
                    D </label></td>
                  </tr>
                  <tr>
                    <th>克拉</th>
                    <td>从
                      <label>
                        <input name="textfield2" type="text" id="CarLow" size="5" maxlength="5" onblur="CustomOpt.SetCaratHigh()" />
                    到
                    <input name="textfield3" type="text" id="CarHi" size="5" maxlength="5" onblur="CustomOpt.SetCaratHigh()" />
                    </label>(克拉范围：0.23~2.100)</td>
                    <th>净度</th>
                    <td><input type="checkbox" name="checkbox11" id="checkbox11" onclick="CustomOpt.SetClarityHigh('SI1|SI2',this)" />
SI
  <input type="checkbox" name="checkbox11" id="checkbox12" onclick="CustomOpt.SetClarityHigh('VS1|VS2',this)" />
VS
<input type="checkbox" name="checkbox11" id="checkbox13" onclick="CustomOpt.SetClarityHigh('VVS2|VVS1',this)" />
WS
<input type="checkbox" name="checkbox11" id="checkbox14" onclick="CustomOpt.SetClarityHigh('IF',this)" />
IF
<input type="checkbox" name="checkbox11" id="checkbox15" onclick="CustomOpt.SetClarityHigh('FL',this)" />
FL</td>
                  </tr>
                  <tr>
                    <th>价格</th>
                    <td>从
                      <label>
                        <input name="textfield4" type="text" id="PriceLow" size="5" onblur="CustomOpt.SetPricetHigh()" />
                        到
  <input name="textfield4" type="text" id="PriceHigh" size="5" onblur="CustomOpt.SetPricetHigh()" />
                    </label>(价格：数字)</td>
                    <th>切工</th>
                    <td><input type="checkbox" name="checkbox12" id="checkbox18" onclick="CustomOpt.SetCutHigh('P',this)" />
P
  <input type="checkbox" name="checkbox12" id="checkbox19" onclick="CustomOpt.SetCutHigh('F',this)" />
F
<input type="checkbox" name="checkbox12" id="checkbox20" onclick="CustomOpt.SetCutHigh('G',this)" />
G
<input type="checkbox" name="checkbox12" id="checkbox21" onclick="CustomOpt.SetCutHigh('VG',this)" />
VG
<input type="checkbox" name="checkbox12" id="checkbox22" onclick="CustomOpt.SetCutHigh('EXCELLENT',this)" />
EX</td>
                  </tr>
                  <tr>
                    <td colspan="4"><asp:Button ID="Change_Manel" runat="server" CssClass="btn1Style" Text="滑块输入搜索" OnClick="ChangeType" />&nbsp;&nbsp;
                      <input type="button" name="button8" id="button16" class="btn1Style" value="重置" onclick="CustomOpt.InitPeoHigh()" />
                    &nbsp;&nbsp;<input type="button" class="btn1Style" value="查看全部" onclick="CustomOpt.InitPeo();CustomMak.Search(CustomOpt);" /></td>
                  </tr>
                </table>
              </div>
            </div>
            <div class="hr"></div>
            <uc2:ucDataTable ID="ucDataTable2" runat="server" />
   	  </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
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
  <area shape="rect" coords="9,1,59,43" href="javascript:CustomOpt.SetClarity('SI1|SI2')" />
  <area shape="rect" coords="59,1,108,43" href="javascript:CustomOpt.SetClarity('VS1|VS2')" />
  <area shape="rect" coords="108,1,157,43" href="javascript:CustomOpt.SetClarity('VVS1|VVS2')" />
    <area shape="rect" coords="157,1,208,42" href="javascript:CustomOpt.SetClarity('IF')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetClarity('FL')" />
</map>
<map name="qie" id="qie">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetCut('P')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetCut('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetCut('G')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetCut('VG')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetCut('EXCELLENT')" />
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
  <area shape="rect" coords="124,2,162,42" href="javascript:CustomOpt.SetCarat(1.34,1.63)" />
  <area shape="rect" coords="162,1,203,43" href="javascript:CustomOpt.SetCarat(1.64,2)" />
  <area shape="rect" coords="88,2,123,41" href="javascript:CustomOpt.SetCarat(1.01,1.33)" />
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

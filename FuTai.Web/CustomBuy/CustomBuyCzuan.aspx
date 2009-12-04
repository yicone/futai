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
    <style>
        .FloatArr{ position:absolute; background:url(/Images/redke.gif) no-repeat center top; padding-top:60px; text-align:center; color:red; width:14px; display:none; font-size:12px; }
        .FloatArr span { display:block; text-align:center; color:red; font-size:12px; position:absolute; bottom:-20px; left:-53px; width:120px}
        .Gf{ background:#d0d0d0; color:#7d7d7d; display:block; text-align:center; width:47px}
        .newb{ border:1px solid #bcac92; background:url(/Images/newb.gif) repeat-x; text-align:center; color:white; font-size:14px; height:24px; padding-left:10px; padding-right:10px; *padding:0px; padding-top:0px; *padding-top:4px}
        .BM{ background:#74572d;  filter:alpha(opacity=50); opacity:0.5; width:49px; height:41px; position:absolute; display:none}
        #BlockMask5{ width:35px;}
    </style>
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
                <div class="cont" style="position:relative">
                    <div id="BlockMask1" class="BM"></div>
                    <div id="BlockMask2" class="BM"></div>
                    <div id="BlockMask3" class="BM"></div>
                    <div id="BlockMask4" class="BM"></div>
                    <div id="BlockMask5" class="BM"></div>
                    <div id="Farr" class="FloatArr"><span></span></div>
                    <div id="Farr2" class="FloatArr"><span></span></div>
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
        <td width="20%" valign="top"><span class="tipname">切工</span>
                <span class="Gf">Learn</span>
        </td>
        <td width="80%"><img src="../images/XXbar_03.jpg" width="268" height="74" border="0" usemap="#qie" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="50%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top">
        <span class="tipname">克拉</span>
        <p style=" color:#74572d">单位：克拉</p>
        </td>
        <td width="80%"><img src="../images/lxxbar_01.jpg" width="267" height="74" border="0" usemap="#KLK" /></td>
      </tr>
    </table></td>
    <td width="50%" height="74" align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">抛光</span></td>
        <td width="80%"><img src="../images/XXbar_04.jpg" usemap="#PaoLight" /></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">颜色</span>
        <span class="Gf">Learn</span></td>
        <td width="80%"><img src="../images/XXbar_01.jpg" width="268" height="74" border="0" usemap="#Color" /></td>
      </tr>
    </table>
    
    </td>
    <td height="74" align="left" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">对称</span></td>
        <td width="80%"><img src="../images/XXbar_05.jpg" usemap="#DC" /></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">净度</span>
        <span class="Gf">Learn</span></td>
        <td width="80%"><img src="../images/XXbar_02.jpg" width="268" height="73" border="0" usemap="#JD" /></td>
      </tr>
    </table>
    
    <%--<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20%" valign="top"><span class="tipname">荧光</span></td>
        <td width="80%"><img src="../images/lxxbar_03.jpg" usemap="#YD" /></td>
      </tr>
    </table>--%></td>
    <td height="74" align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top" colspan="2">
        
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10%" valign="top"><span class="tipname">价格</span></td>
        <td width="90%"><img src="../images/lxxbar_02.jpg" border="0" usemap="#Price" /></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="left" valign="bottom" height="40"><asp:Button ID="ByHand" runat="server" CssClass="newb" Text="手动输入条件" OnClick="ChangeType2" />&nbsp;&nbsp;
      <input type="button" class="newb" value="重置" onclick="CustomOpt.InitPeo()" />
      &nbsp;&nbsp;<input type="button" class="newb" value="查看全部" onclick="CustomOpt.InitPeo();CustomMak.Search(CustomOpt);" /></td>
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
  <area shape="rect" coords="8,0,42,42" href="javascript:CustomOpt.SetColor('J');CustomOpt.SetBlock(118,169,'BlockMask5')" />
  <area shape="rect" coords="42,1,80,42" href="javascript:CustomOpt.SetColor('I');CustomOpt.SetBlock(152,169,'BlockMask5')" />
  <area shape="rect" coords="80,1,115,42" href="javascript:CustomOpt.SetColor('H');CustomOpt.SetBlock(187,169,'BlockMask5')" />
  <area shape="rect" coords="115,0,153,42" href="javascript:CustomOpt.SetColor('G');CustomOpt.SetBlock(225,169,'BlockMask5')" />
  <area shape="rect" coords="153,1,187,42" href="javascript:CustomOpt.SetColor('F');CustomOpt.SetBlock(260,169,'BlockMask5')" />
  <area shape="rect" coords="187,0,223,42" href="javascript:CustomOpt.SetColor('E');CustomOpt.SetBlock(297,169,'BlockMask5')" />
  <area shape="rect" coords="223,0,258,43" href="javascript:CustomOpt.SetColor('D');CustomOpt.SetBlock(332,169,'BlockMask5')" />
</map>
<map name="JD" id="JD">
  <area shape="rect" coords="208,0,258,41" href="javascript:CustomOpt.SetClarity('FL');CustomOpt.SetBlock(317,243,'BlockMask4')" />
  <area shape="rect" coords="157,0,208,41" href="javascript:CustomOpt.SetClarity('IF');CustomOpt.SetBlock(267,243,'BlockMask4')" />
  <area shape="rect" coords="108,0,157,42" href="javascript:CustomOpt.SetClarity('VVS1|VVS2');CustomOpt.SetBlock(217,243,'BlockMask4')" />
    <area shape="rect" coords="59,0,108,42" href="javascript:CustomOpt.SetClarity('VS1|VS2');CustomOpt.SetBlock(168,243,'BlockMask4')" />
    <area shape="rect" coords="9,0,59,42" href="javascript:CustomOpt.SetClarity('SI1|SI2');CustomOpt.SetBlock(118,243,'BlockMask4')" />
</map>
<map name="qie" id="qie">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetCut('P');CustomOpt.SetBlock(470,21,'BlockMask1')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetCut('F');CustomOpt.SetBlock(520,21,'BlockMask1')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetCut('G');CustomOpt.SetBlock(570,21,'BlockMask1')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetCut('VG');CustomOpt.SetBlock(619,21,'BlockMask1')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetCut('EXCELLENT');CustomOpt.SetBlock(669,21,'BlockMask1')" />
</map>
<map name="PaoLight" id="PaoLight">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetPolishing('P');CustomOpt.SetBlock(470,97,'BlockMask2')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetPolishing('F');CustomOpt.SetBlock(520,97,'BlockMask2')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetPolishing('G');CustomOpt.SetBlock(570,97,'BlockMask2')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetPolishing('VG');CustomOpt.SetBlock(619,97,'BlockMask2')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetPolishing('EX');CustomOpt.SetBlock(669,97,'BlockMask2')" />
</map>
<map name="DC" id="DC">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetSymmetry('P');CustomOpt.SetBlock(470,169,'BlockMask3')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetSymmetry('F');CustomOpt.SetBlock(520,169,'BlockMask3')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetSymmetry('G');CustomOpt.SetBlock(570,169,'BlockMask3')" />
	<area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetSymmetry('VG');CustomOpt.SetBlock(619,169,'BlockMask3')" />
    <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetSymmetry('EX');CustomOpt.SetBlock(669,169,'BlockMask3')" />
</map>
<%--<map name="YD" id="YD">
  <area shape="rect" coords="8,1,59,42" href="javascript:CustomOpt.SetFluorescence('N')" />
  <area shape="rect" coords="59,2,109,42" href="javascript:CustomOpt.SetFluorescence('F')" />
  <area shape="rect" coords="108,2,160,42" href="javascript:CustomOpt.SetFluorescence('M')" />
  <area shape="rect" coords="160,2,209,42" href="javascript:CustomOpt.SetFluorescence('S')" />
  <area shape="rect" coords="208,1,258,42" href="javascript:CustomOpt.SetFluorescence('VS')" />
</map>--%>
<map name="KLK" id="KLK">
  <area shape="rect" coords="8,2,36,42" href="javascript:CustomOpt.SetCarat(0.23,0.33);CustomOpt.SetKe(120,87,'0.23-0.33','Farr')" />
  <area shape="rect" coords="37,2,61,42" href="javascript:CustomOpt.SetCarat(0.34,0.63);CustomOpt.SetKe(150,87,'0.34-0.63','Farr')" />
  <area shape="rect" coords="62,2,88,42" href="javascript:CustomOpt.SetCarat(0.64,1);CustomOpt.SetKe(180,87,'0.64-1','Farr')" />
  <area shape="rect" coords="124,2,162,42" href="javascript:CustomOpt.SetCarat(1.34,1.68);CustomOpt.SetKe(245,87,'1.34-1.68','Farr')" />
  <area shape="rect" coords="162,1,203,43" href="javascript:CustomOpt.SetCarat(1.69,2);CustomOpt.SetKe(285,87,'1.68-2','Farr')" />
  <area shape="rect" coords="88,2,123,41" href="javascript:CustomOpt.SetCarat(1,1.33);CustomOpt.SetKe(210,87,'1-1.33','Farr')" />
  <area shape="rect" coords="203,1,257,43" href="javascript:CustomOpt.SetCarat(2.01,2.10);CustomOpt.SetKe(330,87,'2-2.1','Farr')" />
</map>

<map name="Price" id="Price">
<area shape="rect" coords="576,0,609,43" href="javascript:CustomOpt.SetPrice(500000,545000);CustomOpt.SetKe(700,310,'500000-545000','Farr2')" />
<area shape="rect" coords="537,0,576,43" href="javascript:CustomOpt.SetPrice(475000,500000);CustomOpt.SetKe(664,310,'475000-500000','Farr2')"  />
<area shape="rect" coords="502,0,537,42" href="javascript:CustomOpt.SetPrice(450000,475000);CustomOpt.SetKe(630,310,'450000-475000','Farr2')"  />
<area shape="rect" coords="467,0,503,42" href="javascript:CustomOpt.SetPrice(425000,450000);CustomOpt.SetKe(599,310,'425000-450000','Farr2')"  />
<area shape="rect" coords="441,0,467,43" href="javascript:CustomOpt.SetPrice(400000,425000);CustomOpt.SetKe(568,310,'400000-425000','Farr2')"  />
<area shape="rect" coords="411,0,441,43" href="javascript:CustomOpt.SetPrice(375000,400000);CustomOpt.SetKe(540,310,'375000-400000','Farr2')"  />
<area shape="rect" coords="385,0,411,42" href="javascript:CustomOpt.SetPrice(350000,375000);CustomOpt.SetKe(512,310,'350000-375000','Farr2')"  />
<area shape="rect" coords="358,0,386,43" href="javascript:CustomOpt.SetPrice(325000,350000);CustomOpt.SetKe(486,310,'325000-350000','Farr2')"  />
<area shape="rect" coords="333,0,359,43" href="javascript:CustomOpt.SetPrice(300000,325000);CustomOpt.SetKe(454,310,'300000-325000','Farr2')"  />
<area shape="rect" coords="306,0,333,42" href="javascript:CustomOpt.SetPrice(275000,300000);CustomOpt.SetKe(423,310,'275000-300000','Farr2')"  />
<area shape="rect" coords="280,0,306,42" href="javascript:CustomOpt.SetPrice(250000,275000);CustomOpt.SetKe(380,310,'250000-275000','Farr2')"  />
<area shape="rect" coords="251,0,280,42" href="javascript:CustomOpt.SetPrice(225000,250000);CustomOpt.SetKe(345,310,'225000-250000','Farr2')"  />
<area shape="rect" coords="227,0,252,42" href="javascript:CustomOpt.SetPrice(200000,225000);CustomOpt.SetKe(318,310,'200000-225000','Farr2')"  />
<area shape="rect" coords="202,0,227,42" href="javascript:CustomOpt.SetPrice(175000,200000);CustomOpt.SetKe(293,310,'175000-200000','Farr2')"  />
<area shape="rect" coords="174,0,202,42" href="javascript:CustomOpt.SetPrice(150000,175000);CustomOpt.SetKe(267,310,'150000-175000','Farr2')"  />
<area shape="rect" coords="149,0,174,43" href="javascript:CustomOpt.SetPrice(125000,150000);CustomOpt.SetKe(240,310,'125000-150000','Farr2')"  />
<area shape="rect" coords="122,0,150,42" href="javascript:CustomOpt.SetPrice(100000,125000);CustomOpt.SetKe(213,310,'100000-125000','Farr2')"  />
<area shape="rect" coords="92,1,122,43" href="javascript:CustomOpt.SetPrice(75000,100000);CustomOpt.SetKe(194,310,'75000-100000','Farr2')"  />
<area shape="rect" coords="62,1,92,43" href="javascript:CustomOpt.SetPrice(50000,75000);CustomOpt.SetKe(164,310,'50000-75000','Farr2')"  />
<area shape="rect" coords="37,1,62,43" href="javascript:CustomOpt.SetPrice(25000,50000);CustomOpt.SetKe(147,310,'25000-50000','Farr2')"  />
<area shape="rect" coords="9,1,37,43" href="javascript:CustomOpt.SetPrice(1410,25000);CustomOpt.SetKe(120,310,'1410-25000','Farr2')"  />
</map>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>

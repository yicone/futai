<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="CustomPay.aspx.cs" Inherits="FuTai.Web.CustomBuy.CustomPay" %>
<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript">
        $(document).ready(function() {

    });
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
      <p align="right"><img src="../images/custom_step3.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 组合样式</p>
            
       	</div>
        	<div class="box1">
       	    <h2><span>个性定制组合样式</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">总价格：<span class="redfont1"><strong>¥5682.00 </strong></span><br />
                        <strong>钻石: </strong><br />
是一颗拥有无切工、E颜色和VS1净度的钻石，同时她带有GIA13207132证书。 <br />
<strong>钻托: </strong><br />
款式：N709，材质：G750，手寸：7 
<div class="inner_hr2"></div>
<p align="center">
  <input type="submit" name="button2" id="button2" class="btn2Style" value=" 放入购物车 " onclick="location.href='/PayMent/Login.aspx'" />
  &nbsp;
  <input type="submit" name="button3" id="button3" class="btn1Style" value=" 重新选择 " onclick="location.href='/CustomBuy/CustomBuyCzt.aspx'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
        	<div class="box1">
        	  <h2>
        	    <p><a href="#">详细参数</a> <a href="#">产品图片</a> <a href="#">刻字图标</a> <a href="#">配送实物</a> <a href="#">售后服务</a> <a href="#">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数</h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"> <strong>证书号：H15924 </strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">钻石重量：0.360克拉           </td>
                    <td>钻石色泽：K-L色</td>
                  </tr>
                  <tr>
                    <td height="24">钻石切工：NON                <br /></td>
                    <td>钻石净度：SI </td>
                  </tr>
                  <tr>
                    <td height="24">钻石形状：圆形 <br /></td>
                    <td> 产品规格： - x mm</td>
                  </tr>
                  <tr>
                    <td height="24">抛光：NON                    </td>
                    <td>对称性：NON 荧光：弱</td>
                  </tr>
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>款式号：N709D^19 </strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：G750                   镶石<br /></td>
                    <td>原理：六爪镶</td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片</h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务</h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>1、双证双保险：</strong><br />
   福泰为每一颗所售钻石提供国际，国内的双证书，同时，福泰的所有产品由平安财险和中国人保提供第三方责任保险。</li> 
<li><strong>2、终生免费清洗：</strong><br />
   凡福泰所售产品，均终生享受在福泰体验中心的清洗服务。</li> 
<li><strong>3、30天退换货：</strong><br />
   您从福泰购买的正价商品发现质量问题，30天内享受全额退款服务。 </li>
                </ul>
                <div class="hr"></div>
<h3>售后服务</h3>
                <div class="inner_hr"></div>
                <ul>
                	<li>1、饰品不佩戴时请平放（不要曲折）或放在首饰盒里；</li> 
<li>2、饰品应避免接触酸性化学物质（化妆品、香水、清洁剂），以免导致氧化； </li>
<li>3、睡觉、作家务时请不要佩戴饰品，以免因受力折断； </li>
<li>4、钻石表面易沾染油污，定期在家中用温水叫少量清洁精浸泡后，用软毛牙刷轻轻刷洗并清水洗净擦干即可保持闪亮；</li> 
<li>5、您可以随时携带饰品到我们的体验中心进行清洗，保养。</li>
                </ul>
                <h4><br />
                </h4>
</div>
      	  </div>
          <div class="hr"></div>
          <div class="tabSelect">
          	<ul>
            	<li class="now"><a href="#">款式评论</a></li>
                <li><a href="#">常见问题</a></li>
            </ul>
            <div class="clearfix"></div>
            <div class="cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="100" align="center"><p>该款式评论为空!</p></td>
                </tr>
                <tr>
                  <td height="50" align="center"><input type="submit" name="button4" id="button4" class="btn1Style" value=" 我要评论 " /></td>
                </tr>
              </table>
            </div>
          </div>
      </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
    
</asp:Content>
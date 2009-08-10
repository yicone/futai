<%@ Page Language="C#" MasterPageFile="~/SiteMaster.Master"AutoEventWireup="true" CodeBehind="CustomBuyCzt.aspx.cs" Inherits="FuTai.Web.CustomBuy.CustomBuyCzt" %>

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
<asp:PlaceHolder runat="server" ID="Ph_Ctf">
   	  <div class="inner_main">
      <p align="right"><img src="../images/custom_step2.jpg" /></p>
        	<div class="SiteMap">
            
            <p><a href="#">首页 &gt;</a> 个性定制 &gt; 选择戒托</p>
            
        	</div>
            <p><img src="../images/custom_ad.jpg" /></p>
            <div class="hr"></div>
            <div class="box1">
           	  <h2><span>选择戒托</span></h2>
                <div class="cont">
                  <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
               </ul>
               <div class="clearfix"></div>
                <div class="inner_hr"></div>
                <ul class="inner_list1">
               	  <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><asp:LinkButton ID="ShowInfo" runat="server" Text="情定伦敦" OnClick="Info_Show" style="font-weight:bold"></asp:LinkButton><br />男款:<span class="redfont1">¥1760.00</span><br />女款:<span class="redfont1">¥2750.00</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span></p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:<span class="redfont1">¥1760.00</span><br />女款:<span class="redfont1">¥2750.00</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span></p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:<span class="redfont1">¥1760.00</span><br />女款:<span class="redfont1">¥2750.00</span><br />
                    <span class="grayfont1">不论材质（铂金，K金）都可订做</span></p>
                  </li>
                </ul>
                <div class="clearfix"></div>
                <div class="inner_hr"></div>
                <ul class="inner_list1">
               	  <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                </ul>
                <div class="clearfix"></div>
                <div class="inner_hr"></div>
                <ul class="inner_list1">
               	  <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                    <li><img src="../images/product_img.jpg" />
                  <img src="../images/icon_fdj.gif" class="fdjbtn" />
                    <p><a href="#"><strong>情定伦敦</strong></a><br />男款:¥1760.00<br />女款:¥2750.00<br />不论材质（铂金，K金）都可订做 </p>
                  </li>
                </ul>
                <div class="clearfix"></div>
                <ul class="PageSelect">
               	<li>1/50</li>
                <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="textfield" size="2" /></li>
                <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
               </ul>
               <div class="clearfix"></div>
              </div>
            </div>
      </div>
    	<div class="clearfix"></div>
</asp:PlaceHolder>
<asp:PlaceHolder runat="server" ID="Ph_CyBuy" Visible="false">
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
                      <td valign="top" class="product_detail"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="32" colspan="2">戒托价格：<strong class="redfont1">¥512.00</strong></td>
                        </tr>
                        <tr>
                          <td height="32">材    质：<br /></td>
                          <td> G750       黄     白     玫瑰         PT900     PT950</td>
                        </tr>
                        <tr>
                          <td height="32">手    寸：</td>
                          <td><label>
                            <select name="select" id="select">
                              <option>5</option>
                              <option>6</option>
                              <option>7</option>
                              <option>8</option>
                              <option>9</option>
                              <option>10</option>
                              <option>11</option>
                              <option>12</option>
                              <option>13</option>
                              <option>14</option>
                              <option>15</option>
                              <option>16</option>
                              <option>17</option>
                              <option>18</option>
                              <option>19</option>
                              <option>20</option>
                              <option>21</option>
                              <option>22</option>
                              <option>23</option>
                              <option>24</option>
                            </select>
                          </label></td>
                        </tr>
                        <tr>
                          <td height="32" colspan="2" align="right">&gt; 更多手寸   &gt;联系客服定制   &gt; 如何测量手寸?</td>
                        </tr>
                        <tr>
                          <td height="32">刻    字： </td>
                          <td><label>
                            <input name="textfield" type="text" id="text1" value="4个汉字或8个字母内" />
                          </label>                            
                          <br /></td>
                        </tr>
                      </table>
                      <div class="hr"></div>
                        <div class="inner_hr2"></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="32" align="center">材质：G750    尺寸：7    刻字： 无</td>
                          </tr>
                          <tr>
                            <td height="32" align="center"><asp:Button ID="Btn_Pay" runat="server" CssClass="btn1Style" Text="查看组合效果" OnClick="btn_ClickPay" />
&nbsp;<input type="submit" name="button2" id="Submit2" class="btn1Style" value=" 重新选择 " /></td>
                          </tr>
                        </table>
                        <p align="center">&nbsp;</p>
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
                  <td height="50" align="center"><input type="submit" name="button4" id="Submit3" class="btn1Style" value=" 我要评论 " /></td>
                </tr>
              </table>
            </div>
          </div>
      </div>
      
    	<div class="clearfix"></div>
      <div class="hr"></div>
</asp:PlaceHolder>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>

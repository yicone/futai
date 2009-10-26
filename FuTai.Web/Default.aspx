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
                <img src="dataimg/FTR0038.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S10330" target="_blank"><strong>红色海洋</strong></a><br />
                    
                    
                    福泰价：￥59299<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S10330" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/FTR0027B.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S10318" target="_blank"><strong>魔力</strong></a><br />
                    
                    福泰价：￥16726<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S10318" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/FTR0037-2.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S10325" target="_blank"><strong>缠绵</strong></a><br />
                    
                    福泰价：￥6917<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S10325" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/R0958.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S10232" target="_blank"><strong>爱的诠释</strong></a><br />
                    
                    福泰价：￥5251<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S10232" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/93114.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S06022" target="_blank"><strong>魅力四射</strong></a><br />
                    
                    福泰价：￥4642<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S06022" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/89746.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S06815" target="_blank"><strong>碧玉</strong></a><br />
                    
                    福泰价：￥1701<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S06815" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/H34067W.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S12387" target="_blank"><strong>亮点</strong></a><br />
                    
                    福泰价：￥7245<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S12387" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/97520.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S05009" target="_blank"><strong>浪漫缤纷</strong></a><br />
                    
                    福泰价：￥1822<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S05009" target="_blank">立刻订购</a></p>
            </li>
            <li>
                <img src="dataimg/RA1253.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S13175" target="_blank"><strong>尊贵</strong></a><br />
                    
                    福泰价：￥3937<br />
                    <a class="buybtn" href="/ProductInfo.aspx?proid=S13175" target="_blank">立刻订购</a></p>
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
            <a class="more" target="_blank" href="/ProductSeries.aspx?maintype=Rlove&menu=3">>>更多</a>挚爱专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    情侣系列</h4>
                <img src="dataimg/H33109.jpg" />
                <p>
                    <a href="/ProductInfo.aspx?proid=S12438" target="_blank"><strong>S12438</strong></a><br />
                    
                    福泰价：￥2051<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    婚庆系列</h4>
                <img src="dataimg/SE8361.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S12159" target="_blank"><strong>S12159</strong></a><br />
                   
                    福泰价：￥1696<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    周年婚庆系列</h4>
                <img src="dataimg/RA2077.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S13179" target="_blank"><strong>S13179</strong></a><br />
                    
                    福泰价：￥3821<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
        </ul>
        <h3 class="i_h3_2">
            <a class="more" target="_blank" href="/ProductSeries.aspx?maintype=Plove&menu=4">>>更多</a>礼爱专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    送家人</h4>
                <img src="dataimg/61032.jpg" />
                <p>
                    <a href="/ProductInfo.aspx?proid=S05290" target="_blank"><strong>S05290</strong></a><br />
                   
                    福泰价：￥2960<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送爱人</h4>
                <img src="dataimg/999GZ04.jpg" /><p>
                    <a  href="/ProductInfo.aspx?proid=A13994" target="_blank"><strong>A13994</strong></a><br />
                    金重：2.41g<br />
                    工费：￥50<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送朋友</h4>
                <img src="dataimg/SA580.jpg" /><p>
                    <a  href="/ProductInfo.aspx?proid=S14302" target="_blank"><strong>S14302 </strong></a><br />
                    
                    福泰价：￥2105<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
        </ul>
        <h3 class="i_h3_3">
            <a class="more" target="_blank" href="/ProductSeries.aspx?maintype=Slove&menu=5">>>更多</a>商务专区</h3>
        <ul class="i_plst1 i_plstbg2">
            <li>
                <h4>
                    送朋友</h4>
                <img src="dataimg/SE10743.jpg" />
                <p>
                    <a  href="/ProductInfo.aspx?proid=S14284" target="_blank"><strong>S14284 </strong></a><br />
                   
                    福泰价：￥1583<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送领导</h4>
                <img src="dataimg/AB168.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S04797" target="_blank"><strong>S04797</strong></a><br />
                    
                    福泰价：￥1732<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
            <li>
                <h4>
                    送客户</h4>
                <img src="dataimg/QPE000039.jpg" /><p>
                    <a href="/ProductInfo.aspx?proid=S13279" target="_blank"><strong>S13279</strong></a><br />
                    
                    福泰价：￥2395<br />
                    <a class="buybtn" href="javascript:alert( '订购热线：40088-10025')">立刻订购</a></p>
            </li>
        </ul>
    </div>
    <div class="right">
        <div class="addInfo">
            <a href="/NewIntro/NewExperience.aspx" target="_blank"><img src="dataimg/add_img.jpg" /></a>
            <p>
                <strong><a href="/NewIntro/NewExperience.aspx" target="_blank">置地广场旗舰店<br />
                    地址：南京东路步行街<br />
                    409号置地广场919-920室</a></strong></p>
        </div>
        <div class="hr">
        </div>
        <div class="customBox">
            <ul>
                <li><strong><a href="/CustomBuy/CustomBuyCzuan.aspx">定制流程</a></strong></li>
                <li><a href="/CustomBuy/CustomBuyCzuan.aspx?productType=Diamond">1,选择属于你的钻石</a></li>
                <li><a href="javascript:alert('暂未开放')">2,选择属于你的款式</a></li>
                <li><a href="javascript:alert('暂未开放')">3,国际名师精工镶嵌</a></li>
                <li><a href="javascript:alert('暂未开放')">4,铭刻属于你的印记</a></li>
            </ul>
            <a href="javascript:alert( '订购热线：40088-10025')" class="buybtn">立刻订购</a>
        </div>
        <div class="hr">
        </div>
        <ul class="pLink">
            <li><a href="/School/CustomMake.aspx?type=Custom">
                <img src="images/i_rnavimg1.jpg" /><span>来料定制</span></a></li><li><a href="/School/CustomMake.aspx?type=CustomImg">
                    <img src="images/i_rnavimg2.jpg" /><span>来图定制</span></a></li><li><a href="/School/CustomMake.aspx?type=ReAlive">
                        <img src="images/i_rnavimg3.jpg" /><span>涣然重生</span></a></li><li><a href="/School/CustomMake.aspx?type=OldNew">
                            <img src="images/i_rnavimg4.jpg" /><span>旧貌新颜</span></a></li>
        </ul>
        <div class="hr">
        </div>
        <div class="rankLst">
            <h3>
                <a href="#">畅销排行榜</a></h3>
            <ul style="padding-top:8px; padding-bottom:9px">
                <li><a href="/ProductInfo.aspx?proid=S13286" target="_blank">1、S13286男士钻戒</a></li>
                <li><a href="/ProductInfo.aspx?proid=S14157" target="_blank">2、S14157钻石戒托</a></li>
                <li><a href="/ProductInfo.aspx?proid=S14914" target="_blank">3、S14914钻石吊坠</a></li>
                <li><a href="/ProductInfo.aspx?proid=S09866" target="_blank">4、S09866红宝石戒指</a></li>
                <li><a href="/ProductInfo.aspx?proid=S09864" target="_blank">5、S09864翡翠戒指</a></li>
            </ul>
        </div>
        <div class="hr">
        </div>
        <div class="rankLst">
              <h3><a href="#">精品裸钻推荐</a></h3>
              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="classiclist">
                <tr>
                  <td height="102" valign="top"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td valign="top">1.</td>
                      <td valign="top"><img src="images/index_classicimg.jpg" width="32" height="34" /></td>
                      <td valign="top">克拉：0.25ct<br />
                        切工：EXCELLENT <br />
                        颜色：D <br />
                        净度：VVS1 <br />
                        <span class="prize">8折￥5,700</span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td height="102" valign="top"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td valign="top">2.</td>
                      <td valign="top"><img src="images/index_classicimg.jpg" width="32" height="34" /></td>
                      <td valign="top">克拉：0.25ct<br />
                        切工：EXCELLENT <br />
                        颜色：D <br />
                        净度：VVS1 <br />
                        <span class="prize">8折￥5,700</span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td height="102" valign="top"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td valign="top">3.</td>
                      <td valign="top"><img src="images/index_classicimg.jpg" width="32" height="34" /></td>
                      <td valign="top">克拉：0.25ct<br />
                        切工：EXCELLENT <br />
                        颜色：D <br />
                        净度：VVS1 <br />
                        <span class="prize">8折￥5,700</span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td height="102" valign="top"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td valign="top">4.</td>
                      <td valign="top"><img src="images/index_classicimg.jpg" width="32" height="34" /></td>
                      <td valign="top">克拉：0.25ct<br />
                        切工：EXCELLENT <br />
                        颜色：D <br />
                        净度：VVS1 <br />
                        <span class="prize">8折￥5,700</span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td align="center" valign="top"><a href="#"><img src="images/index_classicmore.jpg" width="71" height="21" /></a></td>
                </tr>
              </table>
          </div>
        
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">
</asp:Content>

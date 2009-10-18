<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master"
    CodeBehind="ProductInfo.aspx.cs" Inherits="FuTai.Web.ProductInfo" %>

<%@ Register Src="/Controls/ucLeft.ascx" TagName="ucLeft" TagPrefix="uc1" %>
<%@ Register Src="Controls/ucComment.ascx" TagName="ucComment" TagPrefix="uc2" %>
<asp:Content ID="head" runat="server" ContentPlaceHolderID="cphHead">
    <link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />

    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            if (getUrlParam("IsCustom")=="true")
            {
                $(".Pstep").show();
                setTimeout("ShowDiamondRing()",200);
            }
            else
                setTimeout("ShowProduct()",200);
        });
        function ShowProduct()
        {
            var result = MyAjax.SearchProduct('<%= this.ProductId %>');
            if(!result.error){
                var productType = result.value.Product.ProductType;
                switch(productType.toLowerCase()){
                    case "diamond":
                        $('#productinfo').attr('id', 'diamond');
                        renderTemplate('diamond',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "ringbracket":
                        $('#productinfo').attr('id', 'ringbracket');
                        renderTemplate('ringbracket',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "diamondring":
                        $('#productinfo').attr('id', 'diamondring');
                        renderTemplate('diamondring',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "pairring":
                        $('#productinfo').attr('id', 'pairring');
                        renderTemplate('pairring',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "diamondornament":
                        $('#productinfo').attr('id', 'diamondornament');
                        renderTemplate('diamondornament',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "goldornament":
                        $('#productinfo').attr('id', 'goldornament');
                        renderTemplate('goldornament',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    case "jewel":
                        $('#productinfo').attr('id', 'jewel');
                        renderTemplate('jewel',{ 'info': result.value,'islogin':IsLogin});
                        break;
                    default:
                        break;
                }
            }else{
                alert(result.error.Message);
            }
        }
            function ShowDiamondRing()
            {
                var Did=getUrlParam("DiamondId");
                var Rid=getUrlParam("RingBraId");
                var result = MyAjax.SerachCombineDiamond(Did,Rid);
                if(!result.error){
                    if (result.value.RingResult.Product==null || result.value.DiamondResult.Product==null)
                    {
                        alert("错误的参数");
                        location.href='/Default.aspx';
                        return;
                    }
                     $('#productinfo').attr('id', 'combine');
                        renderTemplate('combine',{ 'diamondinfo':result.value.DiamondResult,'ringinfo':result.value.RingResult,'islogin':IsLogin});
                }
                else{
                    alert(result.error.Message);
                }
            }
    </script>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphContent">
    <uc1:ucLeft ID="ucLeft3" runat="server" />
    <div class="inner_main">
        <p class="Pstep" align="right" style="display: none">
            <img src="../images/custom_step3.jpg" /></p>
        <div class="SiteMap">
            <p>
                <a href="\Default.aspx">首页 &gt;</a> &gt; 产品信息
            </p>
        </div>
        <div class="hr">
        </div>
        <div id="productinfo">
            <!-- 模板生成 -->
        </div>
        <div class="hr">
        </div>
        <uc2:ucComment ID="ucComment1" runat="server" />
    </div>
    <div class="clearfix">
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphTemplate">
    <textarea id="jewel-template" style="display: none">
        <div class="box1">
       	    <h2><span>宝石信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
                      市场价：¥{$T.info.Product.Price}<br />
                      福泰价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span><br />
                      {#if $T.islogin==true}
                      会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
                      {#/if}
                      款号：{$T.info.Product.FTId}
                      <br /><br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button2" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button3" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=Jewel'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>戒指结构：</strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.RingType}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝名称：{$T.info.ConProduct.JewelType}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重量：{$T.info.ConProduct.mainDiamondCarat}克拉</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.otherDiamondname}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：{$T.info.ConProduct.otherDiamondCarat}克拉</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：{$T.info.ConProduct.otherDiamondshu}颗</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="diamond-template" style="display: none">
        <div class="box1">
           	  <h2><span>裸钻信息</span></h2>
            <div class="cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="310" valign="top"><p><img src="../images/custom_productimg2.jpg" width="288" height="214" /></p>
                  <p>&nbsp;</p>
                  <p>
                    <input type="button" name="button4" id="Submit1" class="btn1Style" value="发送给好友" onclick="copyToClipBoard('{$T.info.Product.ProductId}')" />
                    <input type="button" name="button5" id="Submit2" class="btn1Style" value="收藏" onclick="window.external.addFavorite(location.href,'{$T.info.Product.ProductId}')" />
                  </p></td>
                  <td width="320" valign="top" align="left">
                    <p style="line-height:23px; padding-bottom:10px">福泰价：¥{$T.info.Product.Price} <br />
                    折扣价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span>
                    {#if $T.islogin==true}
                      <br />会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
                      {#/if}
                    </p>
                    <p style="line-height:23px;"> <strong>主要参数: </strong><br />
                      钻石重量：{$T.info.ConProduct.Carat}克拉  &nbsp;&nbsp;  净度：{$T.info.ConProduct.Clarity} <br />
                  钻石切工：{$T.info.ConProduct.Cut}        &nbsp;&nbsp;     颜色：{$T.info.ConProduct.Color}<br />
                  <br />
                  <strong>鉴定机构: </strong><br />
国检；GIA</p>
                  <%--<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="center"><img src="../images/custom_btn1.jpg" width="90" height="21" />&nbsp;&nbsp;<img src="../images/custom_btn2.jpg" width="90" height="21" /></td>
                    </tr>
                  </table>--%>                  <p>&nbsp;</p>
                  <p><a href="#">如何定制？</a> &nbsp;  <a href="#">联系福泰</a></p>
                  <p>&nbsp;</p>
                  <p>
                    <a href="/ProductList.aspx?productType=RingBracket&IsCustom=true&Diamond={$T.info.Product.ProductId}" class="JieTuo">选择戒托</a>
                    <input type="button" name="button3" id="Submit3" class="btn1Style" value="给商品留言" onclick="alert('暂未开放')" style="vertical-align:middle" />
                    <input type="button" name="button2" id="Submit4" class="btn1Style" value="联系福泰顾问" onclick="alert('暂未开放')" style="vertical-align:middle" />
                  </p>
                    </td>
                </tr>
              </table>
            </div>
        </div>
        <div class="hr"></div>
        <div class="custom_leftbox">
        <div class="box1">
        <h2><span>裸钻详细信息</span></h2>
            <div class="cont">
              <table width="100%" border="0" cellspacing="10" cellpadding="0">
                <tr>
                  <td height="30"><p><strong>产品编号：</strong>{$T.info.Product.ProductId}  </p>                  </td>
                </tr>
                <tr>
                  <td height="30"><p><strong>商品所在地： </strong>{$T.info.Product.Location}  </p>                  </td>
                </tr>
                <tr>
                    <td height="30"><p><strong>GIA编号</strong>：{$T.info.ConProduct.CertId}</p></td>
                </tr>
                <tr>
                  <td><p><strong>主要参数: </strong></p>
                    <table width="380" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="50%" height="30">钻石重量：{$T.info.ConProduct.Carat}克拉</td>
                        <td>钻石颜色：{$T.info.ConProduct.Color} </td>
                      </tr>
                      <tr>
                        <td height="30">钻石切工：{$T.info.ConProduct.Cut}</td>
                        <td>钻石净度：{$T.info.ConProduct.Clarity}</td>
                      </tr>
                      <tr>
                        <td height="30">钻石形状：{$T.info.ConProduct.CutStyle}</td>
                        <td>钻石直径：{$T.info.ConProduct.Diameter} </td>
                      </tr>
                    </table>                    </td>
                </tr>
                <tr>
                  <td><p style="line-height:23px"><strong>修饰度: </strong><br />
                    抛光：{$T.info.ConProduct.Polish}  <br />
                    对称性：{$T.info.ConProduct.Symmetry}  <br />
                  荧光：{$T.info.ConProduct.Fluorescence} <br />
                  八箭八星：{$T.info.ConProduct.AH=="是"?"有":"无"}
                   </p>                  </td>
                </tr>
                <tr>
                  <td>如果您有任何问题，请联系我们的珠宝顾问：<br />
订购热线（免长途费）：400-881-0025 在线珠宝客服 </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><input type="submit" name="button6" id="Submit5" class="btn1Style" value="直接购买" />
                    <input type="submit" name="button6" id="Submit6" class="btn1Style" value="发送给好友" />
                    <input type="submit" name="button7" id="Submit7" class="btn1Style" value="收藏" /></td>
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
    </textarea>
    <textarea id="ringbracket-template" style="display: none">
        <div class="box1">
       	    <h2><span>戒托信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
市场价：¥{$T.info.Product.Price}<br />
福泰价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span><br />
{#if $T.islogin==true}
会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
{#/if}
款号：{$T.info.Product.ProductId}</span>
<br /><br /><br /><br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button9" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button10" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=RingBracket'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                  
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.MetalType}
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>戒托结构：</strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">金重：{$T.info.ConProduct.Craft}克
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.otherDiamondname}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：{$T.info.ConProduct.otherDiamondCarat}克
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：{$T.info.ConProduct.otherDiamondshu}颗
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="diamondring-template" style="display: none">
        <div class="box1">
       	    <h2><span>钻戒信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
市场价：¥{$T.info.Product.Price}<br />
福泰价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span><br />
{#if $T.islogin==true}
会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
{#/if}
款号：{$T.info.Product.ProductId}</span>
<br /><br /><br /><br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button7" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button8" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=DiamondRing'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.RingType}
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>钻戒结构：</strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重量：{$T.info.ConProduct.mainDiamondCarat}克拉
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.otherDiamondname}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：{$T.info.ConProduct.otherDiamondCarat}克拉
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：{$T.info.ConProduct.otherDiamondshu}颗
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="pairring-template" style="display: none">
         <div class="box1">
       	    <h2><span>对戒信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
市场价：¥{$T.info.Product.Price}<br />
福泰价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span><br />
{#if $T.islogin==true}
会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
{#/if}
款号：{$T.info.Product.ProductId}<br />
相配对的戒指：<a href="/ProductInfo.aspx?proid=<%=PairId %>&pairid={$T.info.Product.ProductId}&total=<%=TotalPrice %>"><%=PairId %></a><br />
对戒总价：<%=TotalPrice %>
<br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button11" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button12" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=PairRing'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.RingType}</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="diamondornament-template" style="display: none">
        <div class="box1">
       	    <h2><span>钻饰信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
市场价：¥{$T.info.Product.Price}<br />
福泰价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100)}</strong></span><br />
{#if $T.islogin==true}
会员价：<span class="redfont1"><strong>¥{parseInt($T.info.Product.Price*$T.info.Product.DiscountType/100*UserAccNum)}</strong></span><br />
{#/if}
款号：{$T.info.Product.ProductId}</span>
<br /><br /><br /><br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button5" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button6" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=DiamondOrnament'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.RingType}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">金重：{$T.info.ConProduct.Goldweight}克</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重：{$T.info.ConProduct.mainDiamondCarat}克</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="goldornament-template" style="display: none">
        <div class="box1">
       	    <h2><span>金饰信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S1.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span><br />
金重：{$T.info.ConProduct.Goldweight}<br />
金价：<span class="redfont1"><strong>¥{$T.info.ConProduct.Goldprice}</strong></span><br />
工费：{$T.info.ConProduct.gongfei}<br />
价格：<span class="redfont1"><strong>¥{parseInt(parseFloat($T.info.ConProduct.Goldweight)*parseFloat($T.info.ConProduct.Goldprice)+parseFloat($T.info.ConProduct.gongfei))}</strong></span>
<br /><br />
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="button1" class="btn2Style" value=" 放入购物车 " onclick="alert('暂未开放')" />
  &nbsp;
  <input type="button" name="button3" id="button4" class="btn1Style" value=" 重新选择 " onclick="location='ProductList.aspx?productType=GoldOrnament'" />
</p>
</td>
                    </tr>
                  </table>
                </div>
            </div>
            <div class="hr"></div>
            <div class="box1">
        	  <h2>
        	    <p><a href="#a">详细参数</a> <a href="#b">产品图片</a> <a href="#c">售后服务</a> <a href="#d">保养常识</a></p><span>商品详细信息</span></h2>
        	  <div class="cont">
              	<h3>详细参数<a name="a"></a></h3>
                <div class="inner_hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2">产品编号： {$T.info.Product.ProductId}</td>
                  </tr>
                  <tr>
                    <td width="160" height="24">所在地：{$T.info.Product.Location}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.info.ConProduct.RingType}</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/productImg/{$T.info.ConProduct.kuanhao}_S2.jpg" width="580" height="497" /> </p>
               <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
    </textarea>
    <textarea id="combine-template" style="display: none">
        <div class="box1">
       	    <h2><span>个性定制组合样式</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/{$T.ringinfo.ConProduct.kuanhao}Combin.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">总价格：<span class="redfont1"><strong>¥{parseInt($T.diamondinfo.Product.Price)+parseInt($T.ringinfo.Product.Price)} </strong></span><br />
                        <strong>钻石: </strong><br />
编号：{$T.diamondinfo.Product.ProductId}，产地：{$T.diamondinfo.Product.Location}，重量：{$T.diamondinfo.ConProduct.Carat}克拉，净度：{$T.diamondinfo.ConProduct.Clarity}<br />切工：{$T.diamondinfo.ConProduct.Cut}，颜色：{$T.diamondinfo.ConProduct.Color} <br />
<strong>钻托: </strong><br />
编号：{$T.ringinfo.Product.ProductId}，产地：{$T.ringinfo.Product.Location}，款式：{$T.ringinfo.ConProduct.Style}，材质：{$T.ringinfo.ConProduct.MetalType}
<div class="inner_hr2"></div>
<p align="center">
  <input type="button" name="button2" id="Submit8" class="btn2Style" value=" 放入购物车 " onclick="alert('即将推出')" />
  &nbsp;
  <input type="button" name="button3" id="Submit9" class="btn1Style" value=" 重新选择 " onclick="location='/ProductList.aspx?productType=RingBracket&IsCustom=true&Diamond={$T.diamondinfo.Product.ProductId}'" />
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
                    <td height="24" colspan="2"> <strong>证书号：{$T.diamondinfo.ConProduct.CertId} </strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">钻石重量：{$T.diamondinfo.ConProduct.Carat}克拉           </td>
                    <td>钻石色泽：{$T.diamondinfo.ConProduct.Color}色</td>
                  </tr>
                  <tr>
                    <td height="24">钻石切工：{$T.diamondinfo.ConProduct.Cut}               <br /></td>
                    <td>钻石净度：{$T.diamondinfo.ConProduct.Clarity} </td>
                  </tr>
                  <tr>
                    <td height="24">钻石形状：{$T.diamondinfo.ConProduct.CutStyle} <br /></td>
                    <td> 产品规格：{$T.diamondinfo.ConProduct.Diameter}</td>
                  </tr>
                  <tr>
                    <td height="24">抛光：{$T.diamondinfo.ConProduct.Polish}                   </td>
                    <td>对称性：{$T.diamondinfo.ConProduct.Symmetry} 荧光：{$T.diamondinfo.ConProduct.Fluorescence}</td>
                  </tr>
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>款式号：{$T.ringinfo.ConProduct.StyleId} </strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">材质：{$T.ringinfo.ConProduct.MetalType}<br /></td>
                    <td>款式：{$T.ringinfo.ConProduct.Style}</td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片</h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/{$T.ringinfo.ConProduct.kuanhao}Combin_S2.jpg" width="580" height="497" /> </p>
                <h3>售后服务</h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><a href="NewIntro/NewExperience.aspx?type=Promise"><strong>福泰百年承诺</strong></a></li> 
                </ul>
                <div class="hr"></div>
<h3>保养常识<a name="d"></a></h3>
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
                  <td height="50" align="center"><input type="submit" name="button4" id="Submit10" class="btn1Style" value=" 我要评论 " /></td>
                </tr>
              </table>
            </div>
          </div>
    </textarea>
</asp:Content>

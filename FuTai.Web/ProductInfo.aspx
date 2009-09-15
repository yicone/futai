<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="ProductInfo.aspx.cs" Inherits="FuTai.Web.ProductInfo" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="head" runat="server" ContentPlaceHolderID="cphHead">
<link type="text/css" rel="stylesheet" href="/style/custom.css" />
    <link type="text/css" rel="stylesheet" href="/style/inner.css" />
    <script type="text/javascript" src="/js/jquery.jtemplates-0.7.5.pack.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            var result = MyAjax.SearchProduct('<%= this.ProductId %>');
            if(!result.error){
                var productType = result.value.Product.ProductType;
                switch(productType.toLowerCase()){
                    case "diamond":
                        $('#productinfo').attr('id', 'diamond');
                        renderTemplate('diamond',{ 'info': result.value});
                        break;
                    case "ringbracket":
                        $('#productinfo').attr('id', 'ringbracket');
                        renderTemplate('ringbracket',{ 'info': result.value});
                        break;
                    case "diamondring":
                        $('#productinfo').attr('id', 'diamondring');
                        renderTemplate('diamondring',{ 'info': result.value});
                        break;
                    case "pairring":
                        $('#productinfo').attr('id', 'pairring');
                        renderTemplate('pairring',{ 'info': result.value});
                        break;
                    case "diamondornament":
                        $('#productinfo').attr('id', 'diamondornament');
                        renderTemplate('diamondornament',{ 'info': result.value});
                        break;
                    case "goldornament":
                        $('#productinfo').attr('id', 'goldornament');
                        renderTemplate('goldornament',{ 'info': result.value});
                        break;
                    case "jewel":
                        $('#productinfo').attr('id', 'jewel');
                        renderTemplate('jewel',{ 'info': result.value});
                        break;
                    default:
                        break;
                }
            }else{
                alert(result.error.Message);
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphContent">
    <uc1:ucLeft ID="ucLeft3" runat="server" />
   	  <div class="inner_main">
        	<div class="SiteMap">
            
            <p><a href="\Default.aspx">首页 &gt;</a> &gt; 产品信息 </p>
            
       	</div>
            <div class="hr"></div>
            
        <div id="productinfo">
            <!-- 模板生成 -->
        </div>
        
   	  </div>
    	<div class="clearfix"></div>
      
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphTemplate">
    <textarea id="jewel-template" style="display: none">
        <div class="box1">
       	    <h2><span>宝石信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">福泰价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span><br />
款号：{$T.info.Product.FTId}<br /><br /><br /><br /><br />
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
                    <td width="160" height="24">主宝名称：{$T.info.ConProduct.JewelType}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重量：{$T.info.ConProduct.mainDiamondCarat}千克</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.RingType}</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
                  <td width="322" valign="top"><p><img src="../images/custom_productimg2.jpg" width="288" height="214" /></p>
                  <p>&nbsp;</p>
                  <p>
                    <input type="submit" name="button4" id="Submit1" class="btn1Style" value="发送给好友" />
                    <input type="submit" name="button5" id="Submit2" class="btn1Style" value="收藏" />
                  </p></td>
                  <td width="350" valign="top" align="left">
                    <p style="line-height:23px; padding-bottom:10px">市场价：¥{$T.info.Product.Price*1.2} <br />
                    福泰价：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span></p>
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
                    <input type="button" name="button3" id="Submit3" class="btn1Style" value="给商品留言" onclick="alert('暂未开放')" />
                    <input type="button" name="button2" id="Submit4" class="btn1Style" value="联系福泰珠宝顾问" onclick="alert('暂未开放')" />
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
                    <td height="30"><p><strong>内部编号</strong>：{$T.info.ConProduct.CertId}</p></td>
                </tr>
                <tr>
                  <td><p><strong>主要参数: </strong></p>
                    <table width="400" border="0" cellpadding="0" cellspacing="0">
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
                        <td>产品规格：{$T.info.ConProduct.Diameter} </td>
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
订购热线（免长途费）：400-700-2199 / 800-819-2199 在线珠宝客服 </td>
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
        <div class="hr"></div>  
    </textarea>
    
    <textarea id="ringbracket-template" style="display: none">
        <div class="box1">
       	    <h2><span>戒托信息</span></h2>
                <div class="cont">
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="300" valign="top">
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
福泰价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span><br />
款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span>
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
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.MetalType}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
福泰价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span><br />
款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span>
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
                </table>
                <div class="hr"></div>
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="24" colspan="2"><strong>钻戒结构：</strong></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重量：{$T.info.ConProduct.mainDiamondCarat}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝名称：{$T.info.ConProduct.RingType}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝重量：{$T.info.ConProduct.otherDiamondCarat}
                </td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">副宝颗粒数：
                </td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
福泰价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span><br />
款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span>
<br /><br /><br /><br /><br />
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
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">
福泰价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span><br />
款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span>
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
                    <td width="160" height="24">金重：</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td width="160" height="24">主宝重：{$T.info.Product.mainDiamondCarat}</td>
                    <td></td>
                  </tr>
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
                      	<div class="product_img"><img src="../images/custom_img.jpg" width="180" height="180" /></div>
                   	  <p align="center"><a href="#">查看大图</a></p></td>
                      <td valign="top" class="product_detail">款号：<span class="redfont1"><strong>{$T.info.Product.ProductId}</strong></span><br />
金重：{$T.info.ConProduct.Goldweight}<br />
金价：<span class="redfont1"><strong>¥{$T.info.ConProduct.Goldprice}</strong></span><br />
工费：{$T.info.ConProduct.gongfei}<br />
价格：<span class="redfont1"><strong>¥{$T.info.Product.Price}</strong></span>
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
                </table>
                <div class="hr"></div>
                <h3>产品图片<a name="b"></a></h3>
                <div class="inner_hr"></div>
                <p align="center">
                <img src="../images/custom_detailpic.jpg" width="580" height="497" /> </p>
                <h3>售后服务<a name="c"></a></h3>
                <div class="inner_hr"></div>
                <ul>
                	<li><strong>福泰百年承诺</strong></li> 
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
    
</asp:Content>


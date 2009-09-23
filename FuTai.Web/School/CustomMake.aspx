<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomMake.aspx.cs" MasterPageFile="~/SiteMaster.Master" Inherits="FuTai.Web.School.CustomMake" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="head" runat="server" ContentPlaceHolderID="cphHead">
<link href="../style/inner.css" rel="stylesheet" type="text/css" />
<link href="../style/forum.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphContent">
<uc1:ucLeft ID="ucLeft3" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="/Default.aspx">首页</a> > <a href="/School/School.aspx">福泰学院</a> > <%=TypeWord%></p>
        </div>
<asp:Panel ID="Custom" runat="server" Visible="false">
        <div class="box1">
          <h2><span><strong>来料定制</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="100" align="center">主石由客人提供，福泰设计师手绘草稿，专业工艺师起版镶嵌，终成完美首饰。</td>
              </tr>
            </table>
          </div></div>
          <div class="hr"></div>
        <div class="box1">
          <h2><span><strong>来料定制</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="../images/customimg7.png" alt="" border="0" /></td>
                <td>客人的红珊瑚菊花</td>
              </tr>
              <tr>
                <td align="center"><img src="../images/customimg10.png" alt="" border="0" /></td>
                <td>设计两款，一款现代，一款婉约。
                  <div id="u12">
                    <div id="u12_rtf"></div>
                  </div></td>
              </tr>
              <tr>
                <td align="center"><img src="../images/customimg13.png" alt="" border="0" /></td>
                <td>一款现代，一款婉约。</td>
              </tr>
            </table>
          </div>
        </div>
</asp:Panel>
<asp:Panel ID="CustomImg" runat="server" Visible="false">
        <div class="box1">
          <h2><span><strong>来图定制</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="100" align="center">主石由客人提供，福泰设计师手绘草稿，专业工艺师起版镶嵌，终成完美首饰。</td>
              </tr>
            </table>
          </div></div>
          <div class="hr"></div>
        <div class="box1">
          <h2><span><strong>来图定制</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="../images/laitu_pic.jpg" width="190" height="263" /></td>
              </tr>
            </table>
            <p>这是最终的成品所拍照片，我们的客人是基督教徒，原来的图片可能是她从网上下载的吧，不能不说我们工艺师的水平超级精湛，最后的成品令客人欢喜万分。          </p>
          </div>
        </div>
</asp:Panel>
<asp:Panel ID="ReAlive" runat="server" Visible="false">
        <div class="box1">
          <h2><span><strong>焕然重生</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="100" align="center">客人自购的珠宝由于意外破损或者断裂（比较多的情况是翡翠饰品），福泰依据碎料的形状、<br />
                品质以及客人的需求，设计出特别的首饰，让它如凤凰涅磐一般重生，以全新的面容继续陪伴它的主人。</td>
              </tr>
            </table>
          </div></div>
          <div class="hr"></div>
        <div class="box1">
          <h2><span><strong>案例连接</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="../images/huanranchongsheng_pic1.jpg" width="190" height="263" />男戒</td>
                <td align="center"><img src="../images/huanranchongsheng_pic2.jpg" width="189" height="263" />女戒</td>
              </tr>
            </table>
            <p>看得出来吗？这本来是一只满绿的翡翠扳指，那可是妈妈赠送的结婚礼物，一不小心被压碎成了好多块。我们挑选其中主要的三块精心打磨之后，镶嵌成了一对别致的对戒，客人十分满意并且万分地感激。</p>
          </div>
        </div>
</asp:Panel>
<asp:Panel ID="OldNew" runat="server" Visible="false">
        <div class="box1">
          <h2><span><strong>旧貌新颜</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="100" align="center">客人自购的珠宝由于意外破损或者断裂（比较多的情况是翡翠饰品），福泰依据碎料的形状、<br />
                品质以及客人的需求，设计出特别的首饰，让它如凤凰涅磐一般重生，以全新的面容继续陪伴它的主人。</td>
              </tr>
            </table>
          </div></div>
          <div class="hr"></div>
        <div class="box1">
          <h2><span><strong>案例连接</strong>：</span></h2>
          <div class="cont">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="../images/jiumaoxinyan_pic1.jpg" width="233" height="234" /></td>
                <td align="center"><img src="../images/jiumaoxinyan_pic2.jpg" width="233" height="234" /></td>
              </tr>
            </table>
            <p><br />
              如上照片：四爪的牛头已经是这两年来倍受称赞的款式了，可是日子久了，难免有“审美疲劳”的嫌疑，揺身一变，华丽端庄的她，你还认得出吗？<br />
              <br />
            特别提示：对福泰珠宝的亲亲会员们，我们提供免工费换款一次哦。</p>
          </div>
        </div>
</asp:Panel>
   	  </div>
   	  <div class="clearfix"></div>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphTemplate">
</asp:Content>

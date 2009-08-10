<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SiteMaster.Master" CodeBehind="SchoolProfile.aspx.cs" Inherits="FuTai.Web.School.SchoolProfile" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="#">首页</a> > <a href="School.aspx">福泰学院</a> > <%=KeyWord %></p>
        </div>
  <div class="box1">
          <h2><span><%=KeyWord %>：</span></h2>
          <div class="cont school_detail">
          	<h4><%=KeyWord %> </h4>
          	<p>净度代表着钻石的“纯净程度”，或其中包裹物（如裂纹、晶体或其他细小物质）的数量，性质，位置，大小。购买钻石时，您<br />
       	    需要斟酌包裹物的情况，因为钻石本身的纯净之美会受到一定影响。</p>
          	<p> 当注视钻石时，有可能会看见「瑕疵」或「内含物」- 通常随着晶体组成或扭曲时而形成。净度代表钻石的透明程度，主要是从<br />
          	  它的体积、位置和内含物的数量与瑕疵来评级。</p>
          	<p> 美国珠宝学院在检视钻石时，会使用 10 倍放大镜和依据 G.I.A. 「美国宝石学会」的标准来鉴定钻石净度的 11 个等级。从完<br />
          	  美无瑕(FL) 开始，即指钻石内在和表面均无瑕疵，然后顺 序到最低的瑕疵级 (I3)，形容单以肉眼已能发现石内的内含物与瑕疵。 <br />
       	    </p>
            <h4>净度分级标准: </h4>
            <p align="center"><img src="../images/school_detailimg.jpg" /></p>
            <h4>净度等级对钻石的闪光与明亮度有影响吗？ </h4>
            <p>除非是大颗钻石，净度等级对钻石可见外观的影响很小。钻石越大，切面也就越大，而大切面会增加净度的可见度。在钻石的4C
标准中，净度被认为是最不重要的一个品性，因为钻石的璀璨光芒主要是由切工决定的。您的钻石切工等级越高，您就越难发现其中
的包裹物。</p>
<h4>净度等级是如何判定的？ </h4>
<p>净度等级由宝石内包裹物或瑕疵的数量、大小、颜色与位置决定。“无瑕疵”级（FL）的宝石在10倍的放大镜下观察，内部不见
包裹物，外部不见瑕疵。就净度评级来说，只要包裹物在10倍放大镜下不可见，就被认为是不存在的。</p>
<h4>是不是某些特定形状的钻石，净度等级越高越好？ </h4>
<p>总的来说，您的钻石切工等级越高，您就越难发现其中的包裹物。但是，确实有一些切工方式会要求尽可能高的净度等级，如“方
形”或“祖母绿形”——这两种形状的钻石都使用了阶梯切割，比其它的切割方式更容易觉察到净度问题。所以，我们推荐您在选购这
些形状的钻石时，选择VS1级以上的净度，尽可能地保证您的爱钻中没有明显可见的包裹物。</p>
<h4>如果说一颗钻石“肉眼无瑕疵”，是什么意思？ </h4>
<p>“肉眼无瑕疵”的钻石是不借助仪器，从台面上方，距一个手臂的距离往下看，肉眼无法观察到其包裹物或瑕疵的钻石。 </p>
<h4>如果一枚戒指上镶嵌了三颗钻石，其中每一颗在颜色、切工、净度上的标准要统一吗？</h4>
<p>如果您要选购三钻戒指，建议您选择同样切工等级的钻石，但颜色与净度可有不同。就颜色来说，三个等级内的差距肉眼是不可
见的。比方说，D色，E色与F色的钻石，视觉效果是完全一样的。就净度来说，VS2级以上（含VS2级）的钻石，看上去也一样。 </p>
          </div>
        </div>
      </div>
    	<div class="clearfix"></div>
<div class="clearfix"></div>

</div>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphTemplate" runat="server" ID="Content3">
</asp:Content>
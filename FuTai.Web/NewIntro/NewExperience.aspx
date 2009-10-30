<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewExperience.aspx.cs" MasterPageFile="~/SiteMaster.Master" Inherits="FuTai.Web.NewIntro.NewExperience" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
<link href="../style/inner.css" rel="stylesheet" type="text/css" />
<link href="../style/forum.css" rel="stylesheet" type="text/css" />
<link href="../style/experience.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
<uc1:ucLeft ID="ucLeft3" runat="server" />
<div class="inner_main">
        <div class="SiteMap">
          <p><a href="/Default.aspx">首页</a> > <%=Kword %></p>
        </div>
  <asp:Panel runat="server" ID="Pa_Contact" Visible="false">   
        <div class="box1">
          <h2><span>联系我们：</span></h2>
          <div class="cont myaccount_cont" style="padding-left:30px; padding-right:30px">
          	<div class="experience_left">
                <div class="experience_shop">
                    <img src="../images/experience_shop.jpg" />
                    <p><strong>地    址</strong>：南京东路步行街409号置地广场919-920室</p>
                </div>
                <div class="hr"></div>
                <div class="experience_map">
                    <img src="../images/experience_map.jpg" />
                </div>
            </div>
            <div class="experience_right">
            	<div class="experience_intro">
                	<img src="../images/experience_intro.jpg" />
                    <p>上海体验中心是国内最早的钻石
体验中心，也是国内最成熟的体验中
心。优质的钻石和钻饰、专业贴心的
服务，齐全的钻石查看仪器让您享受
到尊贵的钻石体验。</p>
                </div>
                <div class="hr"></div>
                <div class="experience_add">
                	<ul>
                    	<li>置地广场旗舰店 </li>
<li><strong>地    址：</strong>南京东路步行街
  409号置地广场919-920室</li>
<li><strong>邮    编：200001</strong></li>
<li><strong>电    话：400-881-0025</strong></li>
<li><strong>营业时间：AM:9:30--PM:8:00</strong></li>
<li><strong>交    通：</strong> 地铁2号线（南京东路站4号出口），21，37，123，584，802，946，旅游10号线</li>

<li><strong>免费咨询电话：<br/>400-881-0025</strong></li>

<li><strong>客服邮箱：</strong></li>

<li><strong>在线客服：</strong><br/> 
QQ：<br/>454365219；304457988；410321061；623184442；<br/>
MSN：futaizhubao@futaizhubao.com；
futaizhubao@hotmail.com；
futaizhubao@msn.com；</li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
  </asp:Panel>
  <asp:Panel ID="Pa_VIP" runat="server" Visible="false">
        <div class="box1">
          <h2><span>会员制度：</span></h2>
          <div class="cont school_detail">
          <h4 class="noindent"><strong>一，会员的定义</strong><br />
            </h4>
          <p class="noindent">登录福泰珠宝网站www.futaizhubao.com注册并通过信息有效核实，即成为福泰珠宝会员，福泰珠宝会员终身有效。<br />
          </p>
          <h4>二，会员级别及享受的折扣</h4>
          <br />
          <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#74572D" class="helptable">
            <tr>
              <td align="center" bgcolor="#FFFFFF"><p align="center">类别 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">级别条件 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">钻石正价优惠 </p></td>
              <td width="110" align="center" bgcolor="#FFFFFF"><p align="center">镶嵌饰品优惠 </p></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><p align="center">注册会员 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">网站有效注册 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">9.9折 </p></td>
              <td width="110" align="center" bgcolor="#FFFFFF"><p align="center">5.3折 </p></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><p align="center">VIP会员 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">累计消费6000元以下 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">9.8折 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">5.3折后9.8折 </p></td>
            </tr>
            <tr>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">铂金会员 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">一次性消费满6000元并通过会员申请程序 </p></td>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">9.6折 </p></td>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">5.3折后9.6折 </p></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><p align="center">累计消费满1万元并通过会员申请程序 </p></td>
            </tr>
            <tr>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">钻石会员 </p></td>
              <td align="center" bgcolor="#FFFFFF"><p align="center">一次性消费满3万元并通过会员申请程序 </p></td>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">9.3折 </p></td>
              <td rowspan="2" align="center" bgcolor="#FFFFFF"><p align="center">5.3折后9.3折 </p></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#FFFFFF"><p align="center">累计消费满5万元并通过会员申请程序 </p></td>
            </tr>
          </table>
          <h4><br />
            三，会员折扣规则</h4>
          <p class="noindent">1、购买前请主动出示会员卡，即可享受相应折扣优惠；<br />
            2、会员折扣不与特价优惠商品同时享受，且不能与现金抵用券同时使用。裸钻正价享受会员折扣，镶嵌类商品如无特别说明，会员活动享受折上折。<br />
            3、素金类商品不享受会员折扣。<br />
            4、会员在购买时，按照本次购买前会员卡的折扣折价。<br />
            5、银行分期付款形式购买的产品不享受会员折扣 。</p>
          <table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#74572D" class="helptable">
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>服务项目 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>注册会员 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>VIP会员 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>铂金会员 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>钻石会员 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>清洗保养 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td width="120" valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td width="119" valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td width="142" valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>专家安全年检 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>个性化刻字 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>改手寸 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费（每年一次） </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费（每年一次） </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费（每年一次） </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>翻新电镀 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免费 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>改款 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免工费200</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>免工费300</p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>以小换大 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td colspan="3" valign="top" bgcolor="#FFFFFF"><p>凭福泰购买发票，单颗20分以上钻石补差价以小换大 </p></td>
            </tr>
            <tr>
              <td valign="top" bgcolor="#FFFFFF"><p>保修 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>终身 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>终身 </p></td>
              <td valign="top" bgcolor="#FFFFFF"><p>终身 </p></td>
            </tr>
          </table>
          <br />
          <h4 class="noindent">积分换礼：</h4>
          <p class="noindent">1、福泰珠宝会员凭卡消费可累计积分，会员积分只针对个人会员，积分累计无上限。<br />
            2、会员推荐朋友来店消费，享受积分累计，但不进行会员消费累计。<br />
            3、有效可用积分可置换福泰礼品。会员积分不可抵扣货款，不可兑换现金，不可买卖交易。 <br />
            4、礼品置换时间福泰将会通知到各位会员，积分的使用年限为2年，过期清零，请会员将将过期积分尽快使用。</p>
          <h4 class="noindent">补卡规则：</h4>
          <p class="noindent">为了保障您的会员权益，请您务必填写真实有效的会员注册资料，若注册资料有所变更，请及时点击登录福泰珠宝网站www.futaizhubao.com进行变更。<br />
            若您的会员卡不慎遗失，请联系福泰珠宝客服，我们将及时为您补办。客服热线：40088-10025（工作时间：10：00-18：00）<br />
            <br />
            本手册在不损害会员既有利益的条件下由福泰珠宝享有最终解释权，并可进行相应变更。<br />
          </p>
          </div></div>
  </asp:Panel>    
  
  <asp:Panel ID="Pa_Pay" runat="server" Visible="false">
        <div class="box1">
          <h2><span>关于支付：</span></h2>
          <div class="cont school_detail">
            <h4>支付方式</h4>
            <ul>
              <li>旗舰展示中心现场现金支付；</li>
              <li>旗舰展示中心现场POS机刷卡；</li>
              <li>银联电子支付平台；（需洽谈签约）</li>
              <li>支付宝在线支付；（免手续费）</li>
              <li>银行电子汇款；</li>
            </ul>
            <p>为了确保您的资金安全，获得更有品质的服务和产品，请您务必在汇款前和我们联系，联系方式可以通过我们的在线客服，或者40088-10025热线进行确认；在收到您的货款并与您核实之前，福泰珠宝的所有货品恕不保留。敬请谅解。</p>
            <p class="noindent"><strong>适用于全国范围，您可以在选择以下您最方便的银行办理汇款业务。</strong><br />
          	    1、到款日期0－3天<br />
       	    2、汇款后请及时和我们联系，告诉我们以下信息：</p>
            <p>您的真实姓名、会员名称、订单号码、汇款方式、汇入银行、汇款时间、汇款金额。如果可以传真，请将汇款底单（银行回单）传真给我们以便我们即时为您确认：FAX: 021-63509196。</p>
            <p>友情提示：银行汇款请随带你的身份证，你可直接去当地银行（储蓄所）办理现金电汇（不必拥有信用卡或储蓄卡）<br />
              开户行 请询问客服人员</p>
            <h4><br />
              l     邮局汇款；</h4>
            <p class="noindent">
              在收到您的货款并与您核实之前，福泰珠宝的所有货品恕不保留。敬请谅解。<br />
              邮政汇款适用于全国邮政范围所能覆盖的国内地区，您可以直接到邮局填写汇款单<br />
              1、会在您寄出之后2－5天收到汇款。<br />
              2、款到福泰珠宝后，我们会立刻为您安排下单或发货。<br />
              3、请您在汇款人或收款人处注明您的订单号（网上定货结束后会自动显示）。</p>
            <h4>相关问题</h4>
            <p>全国各大银行汇款手续费大全。目前，各银行异地汇款通常都有两种方式，一种是直接到银行汇款的柜台式汇款，一种则是通过网上银行或电话银行汇款。 <br />
              <strong>中国工商银行  手续费用：</strong>工商银行提供两种汇款方式，一是灵通卡汇款，手续费为汇款金额的１％，最低汇款手续费为１元，最高为５０元。二是牡丹卡汇款，没有汇款的手续费  用。 网上银行：每笔最低５元，最高为５０元。 到账时间：灵通卡汇款２４小时内到账，牡丹卡汇款３～５个工作日到账。 <br />
              <strong><br />
              中国农业银行  手续费用：</strong>分为存款汇款和电子汇款两种，存款汇款最低手续费１元，超过１０００元，按０．５％收取费用。由于国内很多地区目前还没开通收费服务，所以还可  以暂时享受免手续费的优惠。电子汇款最低手续费１元，超过ｌ００元按１％收费。 网上银行：与柜台式汇款收费相同。 到账时间：即时到账。 <br />
              <strong><br />
              中国银行 手续费用：</strong>该行的汇款手续费是汇款金额的０．１％，最低限额为５元，最高限额为５００元。即汇款金额在５０００元以内的汇款手续费均为５元，５０００元以上按汇款金额的０．１％收取手续费。 到账时间：第二天到账。 <br />
              <strong><br />
              建设银行 手续费用：</strong>最低手续费１元，最高手续费为５０元。 网上银行：每笔最低１元，最高不超过３０元。 电话银行：每笔最低１元，最高不超过４０元。 到账时间：分两种情况，如果汇款的银行是在联网城市，汇款后两小时即可到账；否则，需３～５个工作日才能到账。 <br />
              <strong><br />
              交通银行 手续费用：</strong>同行之间汇款，收取０．０５％手续费，最低１０元，最高５０元；跨行汇款收１％的手续费，最高收取５０元。 到账时间：即时到账。 <br />
              <strong><br />
              招商银行  手续费用：</strong>分为两种，一种是快速汇款，最低手续费５元，超过１０００元，按０．５％收取费用，适合ｌ万元以内汇款金额。另一种是电子汇款，最低手续费１０  元，汇款手续费为汇款金额的１％，最高为５０元，适合１万元以上汇款金额。 网上银行：每笔收费５元，跨行汇款收费１０元。  到账时间：快速汇款即时到账，电子汇款到账时间为２～３个工作日。 <br />
              <strong><br />
              光大银行 手续费用：</strong>手续费为汇款金额的０．５％，最低为２元，最高为２０元。 到账时间：即时到账。 <br />
              <strong><br />
              华夏银行 手续费用：</strong>手续费为汇款金额的０．１％ ，最低１元，最高１０元。 到账时间：即时到账。 <br />
              <strong><br />
              邮政储蓄 手续费用：</strong>按汇款金额的０．５％收取费用，最高５０元。 到账时间：即时到账，除少数偏远非联网地区。 <br />
              <strong><br />
          其中，交通银行跨行汇款与邮政储蓄手续费收取的方式是从本金中直接划扣。</strong></p></div></div>
  </asp:Panel>   
  
  <asp:Panel ID="Pa_Help" runat="server" Visible="false">
  <SCRIPT language=JavaScript>
function toggleLev1Div(nDivIdx){
		if ('block' == document.getElementById(nDivIdx).style.display){
			document.getElementById(nDivIdx).style.display = 'none';
		} else {
			document.getElementById(nDivIdx).style.display = 'block';
		}
	}
</SCRIPT>
        <div class="box1">
        <h2><span>帮助中心：</span></h2>
        <div class="cont school_detail question_list">
          <p class="noindent"><a href="###" onclick="toggleLev1Div('q1')"><strong>在网上下订单金价是以哪一天为准？</strong></a><br />
            <span class="answer" id="q1"> 金价以顾客支付定金下订单日当天的金价为准。 </span><br />
            <a href="###" onclick="toggleLev1Div('q2')"><strong>定制工期一般是几天?   </strong></a>    　　<br />
            <span class="answer" id="q2">首饰定制有严格的流程,工期统一以订单第二日开始计算,从下定到出货共20个工作日。法定假日顺延。</span><br />
            <a href="###" onclick="toggleLev1Div('q3')"><strong>在网上定制钻戒，可以在网上支付定金，然后去实体店验收付余款吗？</strong></a>
            <br /><span class="answer" id="q3">可以，您只需联络我们的线上客服或致电客服热线40088-10025，告知产品的货号等详细信息，我们的客服会帮您联系，您只需支付定金，我们会将  详细情况通知您所要去的实体店，做好安排。</span><br />
            <a href="###" onclick="toggleLev1Div('q4')"><strong>如果网站上看中的款式，标明的手寸与自己不合适，如何买到适合的手寸？ </strong></a>
            <br /><span class="answer" id="q4">您可以与我们的在线客服联系，我们会为您查实是否此款饰品还有适合您手寸的现货，如果没有，我们可以为您安排另行定制。</span><br />
            
            <a href="###" onclick="toggleLev1Div('q5')"><strong>PT容易花的问题和钻戒保养问题？</strong></a>        　　<br />
            <span class="answer" id="q5">PT戒圈在佩戴过程中与物体摩擦，时间长了会变花的，不过只要不碰硬物都不会很明显，钻戒少碰硬物（铂金部分），钻石少碰油即可，一周时间可用洗洁精  温水溶液浸泡20-30分钟，清水冲洗净即可。过三个月可来福泰珠宝免费翻新，超声波清洗一次即可恢复如新。</span><br />
            <a href="###" onclick="toggleLev1Div('q6')"><strong>可以戴钻石洗澡吗？   </strong></a>     　　<br />
            <span class="answer" id="q6">虽然钻石戴在手指上面非常的吸人眼球，但是如果要让您的钻石永远光彩夺目，还是需要对它进行呵护。因为钻石有亲油脂的特性，所以不宜带着钻石去厨房做  事，也不能戴着洗澡，容易藏污纳垢。同时钻石虽然坚硬但是很脆，所以不能用它进行强烈的碰撞。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q7')"><strong>可以戴钻石做家务吗？      </strong></a>   　　<br />
            <span class="answer" id="q7">钻石具有亲油性。它易将油渍、污渍吸附其表面，从而使钻石暂时失去原有的光泽和火彩效应。因此钻饰要单独存放，不要跟其他饰品放在一起，避免造成摩擦  或氧化作用损害了钻饰的本质，最好将钻饰分开收藏。还须注意的是必须防止钻石沾上漂白水。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q8')"><strong>如何保养钻石？   </strong></a>    　　<br />
            <span class="answer" id="q8">将钻石首饰置于洗涤剂中（温水洗洁精溶液即可），将钻饰浸泡半小时，再用毛刷刷洗，之后用清水冲洗，最后用细纱布擦干即可。在自己无法清洗干净的时候可以拿到我们展示中心，凭会员卡免费清洗、翻新。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q9')"><strong>钻戒长期不戴的时候，该怎么处理呢？ </strong></a>      　　<br />
            <span class="answer" id="q9">可将钻石放在首饰盒里，并用柔软手绢包裹放置，建议不要放在人造塑料盒内, 避免与其他饰品磨擦。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q10')"><strong>你们的钻石会掉吗？是否牢固？      </strong></a> 　　<br />
            <span class="answer" id="q10">请放心,我们从未掉过一颗钻石,如果在正常佩戴中脱落,我们会负全责,如果是经过碰撞变形脱落,我们会由第三方鉴定确认责任，并且我们的客服会定期通知您来做钻饰保养及检查牢固度。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q11')"><strong>为什么有工费？    </strong></a>   　　<br />
            <span class="answer" id="q11">在钻石变成戒指的过程中,有一个镶嵌的过程,这个费用是专门支付给镶嵌师傅的,确保镶嵌的质量和安全性。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q12')"><strong>钻石价格涨得快吗？</strong></a>       　　<br />
            <span class="answer" id="q12">国际钻石报价单上，单颗大小在1克拉以上颜色H色以上净度VS以上的钻石几乎每个月都有一定范围的上涨，其他级别大小的钻石价格也在增长，幅度比不上大颗粒钻石。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q13')"><strong>为什么一克拉的钻石有的没有编号？   </strong></a>    　　<br />
            <span class="answer" id="q13">一克拉以上钻石，为了保持其完美性，除非特别要求，都不会带激光编号。不过有大证书图示钻石特征位置，亦可确定此颗钻石。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q14')"><strong>展示中心的地址以及营业时间和联系电话？ </strong></a>      　<br />
            <span class="answer" id="q14">福泰珠宝旗舰展示中心地址：上海市黄浦区南京东路409号置地广场919-920室<br />
            全国免费热线：40088-10025</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q15')"><strong>如果订单生成了，可是又不想购买了，怎么办？  </strong></a>     　　<br />
            <span class="answer" id="q15">如果订单已经生成，我们会与客人取得联系落实订单，在我们联系您时，您可以告知我们，我们会为您删除订单。在还未生成订单，只在购物车内的时候，客人可以自行点击删除，将其取消。</span><br />
            <a href="###" onclick="toggleLev1Div('q16')"><strong>你们公司在网上的产品图片包括展示中心的成品是否都可以进行订制？    </strong></a>    　　<br />
            <span class="answer" id="q16">绝大部分产品都是可以进行订制的，相似度可以达90%。如您需订制，建议您到我们现场，我们的珠宝顾问会根据您的要求判断是否可以进行订制。如您是网  购，希望可以有多视角的产品图片发送给我们的网店服务人员，网店服务人员也会根据您的要求判断是否可以进行订制。</span><br />
            <a href="###" onclick="toggleLev1Div('q17')"><strong>在你们这里订制是否可以根据我的要求进行控金？    </strong></a>    　　<br />
            <span class="answer" id="q17">非常抱歉，因为您所订制的产品都是由纯手工制作的，对于金料的把握根据款式、手寸等等都会有所出入，故现在无法承诺您可以控金，只能根据您所订制的产  品，给予您一个估算出来的参考价，实际的成交价以订制完成后的产品价格为准。</span>
            <br />
            <a href="###" onclick="toggleLev1Div('q18')"><strong>在报价单上看中一颗钻石，可否帮我保留？保留需要什么条件吗？    </strong></a>   　　<br />
            <span class="answer" id="q18">您可以与我们在线客服取得联系，在支付定金后，即可为您保留，支付定金后保留时间为15天，15天过后视弃单处理且定金不退。</span><br />
            <a href="###" onclick="toggleLev1Div('q19')"><strong>支付了定金，过几个月之后再来付余款可以吗？   </strong></a>    　 <br />
            <span class="answer" id="q19">支付定金后保留时间为15天，15天过后视弃单处理且定金不退。</span><br />
            <a href="###" onclick="toggleLev1Div('q20')"><strong>
            请问怎么预约啊？预约了有什么优惠么？   </strong></a>    　　<br />
            <span class="answer" id="q20">您可在福泰珠宝官网上或者拨打40088-10025客服预约电话预约,工作日提前预约可享受优先接待权,双休日和法定节假日除外。</span><br />
            <a href="###" onclick="toggleLev1Div('q21')"><strong>
            取戒指的时候，忘记拍真手秀照片，之后可以去店里补拍吗？       </strong></a>　　<br />
            <span class="answer" id="q21">我们当然是可以为您补拍照片的。</span><br />
            <a href="###" onclick="toggleLev1Div('q22')"><strong>你们出售的商品都有发票吗？  </strong></a>     　　<br />
            <span class="answer" id="q22">我们出售的产品都会开具电子增值税普通发票。</span><br />
            <a href="###" onclick="toggleLev1Div('q23')"><strong>PT的材质好，还是18K材质好呢？如果要镶嵌钻石的，应该选哪个？       </strong></a>　　<br />
            <span class="answer" id="q23">18K的硬度和延展度更好，熔点较低，可以更灵活地塑造不同形态及款式的钻饰，且因融合了25%的其他金属，使硬度大幅加强，不容易变形或刮伤.PT  为铂金,分PT900含90%的铂金,PT950含95%的铂金,PT900硬度强,适合做镶嵌,PT950材质较软适合做素金类首饰。注：延展度指金属  造型的易打造程度，一般针对群镶款或工艺复杂的款式，用18K更好。</span><br />
            <a href="###" onclick="toggleLev1Div('q24')"><strong>什么样的戒托比较牢固？      </strong></a> 　　<br />
            <span class="answer" id="q24">一般爪镶的比较适合镶嵌钻石，通常3爪（含）以上的都是牢固度比较高的。</span><br />
            <a href="###" onclick="toggleLev1Div('q25')"><strong>镶嵌要多少时间啊？       </strong></a>　　<br />
            <span class="answer" id="q25">我们现场镶嵌需要40分钟－1小时即可完成，如果有排队时间顺延。</span><br /><a href="###" onclick="toggleLev1Div('q26')"><strong>一钻双证的权威性</strong></a><br />
            <span class="answer" id="q26">GIA是钻石4C的创始者，是国际上具有公信力的鉴定机构。福泰珠宝历来只销售经过国际最权威、最专业之鉴定机构GIA验证的美钻。福泰珠宝质监小组，会  按国检标准对货源进行严格的筛选。我们将把GIA钻石再送到国家级权威检测机构进行  4C鉴定，另出具一张钻石的国检证书。如国检结果与GIA证书中有钻石级别方面的差异，以GIA证书为准，但是此粒钻石我们将以特价出售。一钻双证，信誉  保证。</span><br />
            <a href="###" onclick="toggleLev1Div('q27')"><strong>钻石的常规鉴别       </strong></a>　　<br />
            <span class="answer" id="q27">1.钻石传热能力非常高，可以在其表面哈气，不到两秒雾气便马上消失。 <br />
            2.可以把钻石用水先湿润，然后再用铅笔轻轻的刻划，在真钻石的晶面上，铅笔划过的地方，是不留痕迹的，如果不是钻石，而是玻璃或水晶等材料，就会在表面上留下痕迹。 <br />
            注：在一般情况下，用铅笔刻划来鉴别钻石真假，这种方法的准确性是比较高。不过在鉴别时，需要得到商家的许可并要注意有些镶嵌好了的旧钻石首饰，是不宜用水浸润的，因为如果是铜或银等材料做镶座的首饰，就很容易氧化</span><br />
            <a href="###" onclick="toggleLev1Div('q28')"><strong>如何才能鉴定镶嵌好以后是我原先选定的那颗钻石?  </strong></a>      　　<br />
            <span class="answer" id="q28">您若购买的是GIA裸钻，一克拉以下的GIA钻石腰棱上都有激光编号和鉴定证书编号唯一对应，镶嵌时也会特别把编号留出来，所以不用担心镶嵌后不是自  己的那颗，通过高倍放大镜，您自己也看的到钻石腰棱上的激光编号！</span><br />
            <a href="###" onclick="toggleLev1Div('q29')"><strong>关于复鉴和GIA证书  </strong></a>      　　<br />
            <span class="answer" id="q29">０５年下半年始，GIA专门开放了官方网站供查询证书真伪，打击盗版。只要输入GIA激光编号（与钻石腰棱上激光编号相符合）和钻石大小就等查到与该  证书完全一致的内容，此资料库为GIA独有，任何仿冒的证书都不可能查的到，换言之，查到的都不会有误。如果是假证书是无法在GIA官方网站上查到，也无  法获得完全与证书相符的数据。 <br />
            其实在开通了ＧＩＡ官网查询后（http://reportcheck.GIA.edu），国内的复鉴就显  得可有可无了，因为国内的鉴定标准本就参次不齐不能作为ＧＩＡ的佑证．自己还是不放心的情况话可以再次国内鉴定，看各项钻石指标是否与证书描述相符，钻石  激光编号是否与证书吻合即可。 <br />
            另外，０６新版证书上除了０５之前老版证书上所有的防伪标志，防伪线，还增加了水印，多方位防伪，您完全可以放心。 <br />
            GIA是目前国际具公信力的钻石鉴定机构，有70多年的历史，全球第一套的钻石分级制度就是GIA制定的。因GIA是非营利机构，不会因人为因素影响鉴  定结果、所以在鉴定书内容品质方面，极具公信力。GIA证书全球通用，国际认可，而国内还没有任何一家鉴定证书获得国际认可。因国内鉴定机构的标准参差不  齐，往往存在不同国内鉴定机构的鉴定结果还有可能不同，当然也有可能与GIA结果不同。所以在任意一家鉴定机构的结果与GIA相左时，以GIA为准。</span><br />
            <a href="###" onclick="toggleLev1Div('q30')"><strong>什么是GIA大证书和小证书?     </strong></a>  　　<br />
            <span class="answer" id="q30">GIA有大证小证之分，大证就是展开大小同A4纸，小证就是1/2 A4纸大小，大证比小证多一个瑕疵标注图，权威性与大证一致。</span><br />
            <a href="###" onclick="toggleLev1Div('q31')"><strong>手寸就是戒指的大小吗？我怎么确定我要的手寸？    </strong></a>   <br />
            <span class="answer" id="q31">答：是的，戒指指圈大小的标准就称为手寸。手寸是以多少号来表示的，分为美式，港式，它们对应的直径和周长各不相同，目前中国多采用港式。 <br />
            现  代人的手寸一般在4-26号之间，在按手寸选购戒指时，夏天以戴上戒指后稍紧为宜，冬天则以戴上后可左右转动，但又不脱落为宜。在戴戒指时，要是觉得太松，可在戒指的指圈内绕上几圈红线或丝线，要是觉得太紧，可以在手指上涂点润肤油或者肥皂液，这样就能顺利地戴上脱下了。<br />
            <br />
            福泰珠宝小贴士： 如何测量的更加准确： <br />
            1， 想得到更确切的尺寸，您可以在19-21点的时候测量，因为这个时候手指尺寸最为准确；<br />
            2， 不要在天气过冷时测量手指，因为这个时候手指的尺寸是最小的；<br />
            3， 在您无法确定具体尺寸号的时候，您可以选择相对较大的手寸号（半号或1号）；<br />
            4， 根据季节不同来适当调整自己的号码，冬天购买戒指，由于天气较冷，手指比夏天要细一号到半号，戒指以带上后可以左右旋转但不易脱落为宜，夏天则以带上后感觉稍紧为宜；<br />
            5， 一般戒指戴于食指、中指或无名指上，大部分女生佩带的戒指号数为10-15号，其中12号、13号的较多；大部分男生佩带的戒指号数为17-22号，其中18-20号的较多；<br />
            6， 您也可以前往附近的首饰店或福泰珠宝展示中心，请那边的服务人员帮您测量一下。
            <br /><br />
            如果您想给她一个意外的惊喜： <br />
            1， 问一下她的母亲或者了解她的手指尺寸的朋友；<br />
            2， 找一下她已经有的戒指内圈上的手寸号，或拿去附近的首饰店，请那边的服务人员帮您测量一下。</span><br />
            <a href="###" onclick="toggleLev1Div('q32')"><strong>荧光到底对钻石的价值和美观有没有影响？        　</strong></a>　<br />
            <span class="answer" id="q32">荧光Fluorescence指标是指钻石在强烈紫外线下会发出的蓝光或者黄光等有色光的强度。也就是说，在自然光线下，是感觉不到它的，除非在紫外  线比较强烈的夏天阳光下，具有很强荧光的钻石，肉眼才能感觉到荧光的存在。荧光只是个辅助参数，对钻石的价值和美观影响很小。</span><br />
            <a href="###" onclick="toggleLev1Div('q33')"><strong>18k为什么会变色?</strong></a>        　　<br />
            <span class="answer" id="q33">18k指的是黄金含量为75%的金饰品，另外的25%是其他的贵金属。金属的颜色主要取决于25%其他金属的配比。一般呈淡淡的黄白色，为了首饰的美  观和耐用，往往在首饰外表面电镀一层镀层。我们看到他们亮白色的外观其实就是镀层。在日常生活中的一些行为会导致镀层磨损。比如：做家务，洗澡，涂抹化妆  品，或者与其它硬物摩擦的时候，都会出现不同程度的磨损。镀层磨损后就会裸露出金属的本色，出现淡淡的黄白色，这是很正常的现象，只要是经过质检中心检验  合格的产品，首饰含量应该没有问题。有很多消费者在佩戴首饰的时候不知道这个情况，误以为是首饰质量出了问题。其实大家不必担心，出现了这个问题后，可以  直接到相关的专业珠宝机构去做一下保养，再重新清洗电镀就可以了</span></p>
        </div>
      </div>
  </asp:Panel>  
  <asp:Panel ID="Pa_Promise" runat="server" Visible="false">
  <SCRIPT language=JavaScript>
function toggleLev1Div(nDivIdx){
		if ('block' == document.getElementById(nDivIdx).style.display){
			document.getElementById(nDivIdx).style.display = 'none';
		} else {
			document.getElementById(nDivIdx).style.display = 'block';
		}
	}
</SCRIPT>
        <div class="box1">
          <h2><span>百年承诺：</span></h2>
          <div class="cont school_detail bnintrobg bainian">
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C1')"><strong>1、一钻双证，品质保障。</strong></a><br />
             <span class="answer" id="C1"> 一钻双证是指同一粒钻石的品质经过国际和国家级权威检测机构的双重认证，4C定级相同，级别可靠。<br />
              2008年4月，福泰珠宝率先推出一钻双证的新规则。有一钻双证的保障，钻石级别更可靠，升值更有底气。客户相同的付出，一钻双证令性价比更高。（<a href="/School/Ceif.aspx" >了解更多有关一钻双证</a>）</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C2')"><strong>2、福泰的每一粒钻石都是历经10万人次加工打磨的完美钻石；</strong></a><br />
              <span class="answer" id="C2">福泰珠宝特别重视钻石的切工，因为钻石的4C以重量为首，颜色、净度代表天然品质，而只有切工是可以经人力而体现钻石之美的唯一因素。因此，福泰珠宝不销售切工总评EX以下的钻石，每一粒钻石都是历经10万人次加工打磨的完美钻石。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C3')"><strong>3、首饰个性化刻字，让您的首饰记录专属您的幸福记号；</strong></a><br />
              <span class="answer" id="C3">首饰承载着爱和祝福，亲人或者朋友在不同的时间，不同的地点，用不同的首饰，表达了不同的情感。一个名字、一个日期、一个特殊的约定。。。。。。福泰为您精心铭刻上去，记录下专属于您的幸福记号。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C4')"><strong>4、福泰首饰终生享受免费的专业清洗和保养；</strong></a><br />
              <span class="answer" id="C4">在长期的佩戴之后，珠宝首饰会变脏、变旧，简单的清洁可以在家里自己进行（了解首饰如何保养），  同时福泰提供专业的清洗和保养，您只要携带好首饰和相关发票前来，所有服务 均是免费的。<br />
              温馨提示：为免您久侯，福泰建议您选择周一到周五的工作时间前来，周末及节假日的首饰保养敬请提前预约。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C5')"><strong>5、福泰首饰享受终生的免费维修（人为因素损坏除外）</strong></a><br />
              <span class="answer" id="C5">长期的佩戴后，珠宝首饰有可能出现镶石松动，佩戴首饰从事体力劳动还有可能导致戒圈变形等情况，这些都需要专业的工艺师进行维修、整形，福泰首饰享受终生的免费维修。<br />
              温馨提示：首饰受人为因素如巨大的撞击导致主石受损、镶石脱落等情况不在免费范围内，福泰将根据贴金、补钻等情况收取相应材料成本。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C6')"><strong>6、福泰GIA钻石首饰享受免工费换新款一次；</strong></a><br />
              <span class="answer" id="C6">福泰每月都会推出新款，在福泰所购GIA钻石享受一次免工费换新款的机会。<br />
              温馨提示：* 仅限在福泰购买的GIA钻石首饰；<br />
              * 请携带原购买凭证、福泰会员卡及GIA证书；<br />
              * 简单款式（不配副钻）免工费100元，豪华款式（配副钻）免工费200元。<br />
              * 原旧托福泰按当日回收价回收，或者由客人自行处理。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C7')"><strong>7、福泰GIA裸钻享受以小换大，原价回收的服务（不参与同期促销）</strong></a><br />
              <span class="answer" id="C7">随着婚后生活的越来越稳定，越来越富足，原来的婚戒可能会觉得还不够大，需要换成更大、级别更高的钻石，福泰想你所想，在以小换大的同时，原来所购的钻石我们原价回收。<br />
              温馨提示：*仅限GIA裸钻回收，原戒托可由福泰按回收价回收，或由客人自行处理；<br />
              *原购裸钻注明是特价，不参加活动的，不能享受本条服务；<br />
              *以小换大的GIA裸钻不能享受当期的促销活动，按福泰正常售价换购。</span></p>
            <p class="noindent"><a href="###" onclick="toggleLev1Div('C8')"><strong>8、福泰珠宝顾问为您提供终生免费的专业珠宝咨询；</strong></a><br />
              <span class="answer" id="C8">钻石作为珠宝中标准化程度很高的品种，除了4C以外尚且还有荧光、全深比等一般人不了解的指标在影响着价格，就不论其它如翡翠、珍珠、猫眼、红蓝宝石等这些不甚熟悉的品种了。福泰珠宝从业十年，深知珠宝的品鉴、选购中深藏着专业性、复杂性很高的知识，我们愿意作您终生的珠宝顾问，为您提供免费的咨询服务。</span></p>
            <a href="/NewIntro/NewExperience.aspx?type=VIP"><p class="noindent">成为福泰会员，优惠更多，福利更精彩。</p></a></div></div>
  </asp:Panel>   
      </div>
      <div class="clearfix"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTemplate" runat="server">

</asp:Content>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDataTable.ascx.cs" Inherits="FuTai.Web.Controls.ucDataTable" %>
<style>
    .cartTable th.n4br{ border-right:1px solid #d0c4ad; border-bottom:1px solid white; padding:0px;border-left:1px solid #d0c4ad; padding-top:1px; padding-bottom:1px }
    .cartTable td.mybr{padding:0px}
    .comparediv{ float:left; border-right:1px solid #d0c4ad }
    .nrb{ border-right:none}
    .comparediv ul li{ height:32px; line-height:32px;}
    .comparediv ul li.mybtn{ padding-top:2px}
    .comparediv ul li.myred{ color:red}
</style>
<div id="SearchResult" class="box1">
        	  <h2><span>搜索结果:(共搜到<font id="NumDio">0</font>颗钻石)</span></h2>
        	  <div id="FuTaiZuan" style="position:relative" class="cont">
               <div id="Mask" class="Mask"></div>
               <div id="LoadForm">
                	<img src="../Images/loadinfo_net.gif" />
    				<div id="Loading">加载中</div>
               </div>
              	<ul class="PageSelect">
               	<li><span id="NowPage"></span>/<span id="MPage"></span></li>
                <li><a href="javascript:void(0)" id="Back"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="javascript:void(0)" id="Next"><img src="../images/pageselect_next.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button4" id="button12" class="btn1Style" value="对比选中钻石" onclick="CustomMak.CompareDia()" />
               </div>
               <div class="clearfix"></div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable" id="FuTb">
                 <tr>
                   <th>选择</th>
                   <th>货号</th>
                   <th>重量</th>
                   <th>净度</th>
                   <th>颜色</th>
                   <th>切工</th>
                   <th>抛光</th>
                   <th>对称</th>
                   <th>证书</th>
                   <th>福泰价</th>
                   <th>折扣价</th>
                   <th>明细</th>
                 </tr>
               </table>
               <ul class="PageSelect">
               	<li><span id="NowPage2"></span>/<span id="MPage2"></span></li>
                <li><a href="javascript:void(0)" id="Back2"><img src="../images/pageselect_left.gif" /></a></li>
                <li><a href="javascript:void(0)" id="Next2"><img src="../images/pageselect_next.gif" /></a></li>
                <li><input name="textfield" type="text" class="input1" id="NumText" size="2" maxlength="3" /></li>
                <li><a href="javascript:CustomMak.GoPage(G('NumText').value)" id="GoNum"><img src="../images/pageselect_comfirm.gif" /></a></li>
               </ul>
               <div class="inner_btnlist">
                 <input type="button" name="button5" id="button13" class="btn1Style" value="对比选中钻石" onclick="CustomMak.CompareDia()" />
               </div>
               <div class="clearfix"></div>
			  </div>
      	  </div>
      	  
      	  <div id="Compare" class="box1" style="display:none">
        	  <h2><span>钻石对比</span></h2>
        	  <div class="cont">
               <div class="inner_btnlist">
                 <input type="button" name="button4" id="button1" class="btn1Style" value="返回钻石列表" onclick="CustomMak.BackToList()" />
               </div>
               <div class="clearfix"></div>
               <div class="hr"></div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
                 <tr>
                   <td width="20%" class="mybr">&nbsp;</td>
                   <td rowspan="12" width="80%" class="mybr">
                   <div id="CpDiv">
                    
                   </div>
                   </td>
                 </tr>
                 <tr>
                    <th class="n4br">货号</th>
                 </tr>
                 <tr>
                   <th class="n4br"> 重量</th>
                 </tr>
                 <tr>
                   <th class="n4br"> 净度</th>
                 </tr>
                 <tr>
                   <th class="n4br"> 颜色</th>
                 </tr>
                 <tr>
                   <th class="n4br">切工        </th>
                 </tr>
                 <tr>
                   <th class="n4br">抛光</th>
                 </tr>
                 <tr>
                   <th class="n4br"> 对称</th>
                 </tr>
                 <tr>
                   <th class="n4br">证书        </th>
                 </tr>
                 <tr>
                   <th class="n4br">福泰价        </th>
                 </tr>
                 <tr>
                   <th class="n4br">折扣价      </th>
                 </tr>
                 <tr>
                   <td class="mybr">&nbsp;</td>
                 </tr>
               </table>
               <div class="inner_btnlist">
                 <input type="button" name="button5" id="button2" class="btn1Style" value="返回钻石列表" onclick="CustomMak.BackToList()" />
               </div>
               <div class="clearfix"></div>
			  </div>
      	  </div>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDataTable.ascx.cs" Inherits="FuTai.Web.Controls.ucDataTable" %>
<div class="box1">
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
                 <input type="button" name="button4" id="button12" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable" id="FuTb">
                 <tr>
                   <th>选择</th>
                   <th>货号</th>
                   <th> 重量</th>
                   <th> 净度</th>
                   <th> 颜色</th>
                   <th>切工        </th>
                   <th>抛光</th>
                   <th> 对称</th>
                   <th>证书        </th>
                   <th>福泰价        </th>
                   <th>折扣价      </th>
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
                 <input type="button" name="button5" id="button13" class="btn1Style" value="对比选中钻石" />
               </div>
               <div class="clearfix"></div>
			  </div>
      	  </div>
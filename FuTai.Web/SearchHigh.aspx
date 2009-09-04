<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchHigh.aspx.cs" Inherits="FuTai.Web.SearchHigh" MasterPageFile="~/SiteMaster.Master" %>

<%@ Register src="/Controls/ucLeft.ascx" tagname="ucLeft" tagprefix="uc1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server" ID="Content1">
<link href="/style/inner.css" rel="stylesheet" type="text/css" />
<link href="/style/forum.css" rel="stylesheet" type="text/css" />
<link href="/style/custom.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="cphContent" runat="server" ID="Content2">
    <uc1:ucLeft ID="ucLeft" runat="server" />
    <div class="inner_main">
        <div class="hr"></div>
        <p align="center">如您需要我们为您提供服务，请拨打24小时免费客服电话：40088 10025     或者点击在线客服进行咨询，更精确查询请点击这里。</p>
        <div class="hr"></div>
        <div class="box1">
          <h2><span>高级搜索：</span></h2>
          <div class="cont">
          
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>商品名称： </td>
                <td><label>
                  <select name="select" id="select">
                    <option>请选择 </option>
                  </select>
                </label></td>
                <td>材质：</td>
                <td><select name="select2" id="select2">
                  <option>请选择 </option>
                </select></td>
                <td>珠宝：</td>
                <td><select name="select3" id="select3">
                  <option>请选择 </option>
                </select></td>
                <td>价格：</td>
                <td><select name="select4" id="select4">
                  <option>请选择 </option>
                </select></td>
                <td>关键字：</td>
                <td><select name="select5" id="select5">
                  <option>请选择 </option>
                </select></td>
                <td><label>
                  <input type="submit" class="btn1Style" name="button2" id="button2" value=" GO " />
                </label></td>
              </tr>
            </table>
            <ul class="PageSelect">
              <li>1/50</li>
              <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
              <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
            </ul>
            <p style="line-height:40px;">更新日期：2009-6-25</p>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable">
              <tr>
                <th>类型          证书</th>
                <th>编号</th>
                <th> 重量(克拉)      </th>
                <th>切工</th>
                <th> 颜色</th>
                <th> 净度    </th>
                <th>抛光/对称        </th>
                <th>销售价格</th>
                <th>详情</th>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33        </td>
                <td>EXCELLENT</td>
                <td> G       </td>
                <td>VS1</td>
                <td> EX/EX         </td>
                <td>￥5,700       </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
              <tr>
                <td>钻石</td>
                <td> GIA-15161498</td>
                <td> 0.33 </td>
                <td>EXCELLENT</td>
                <td> G </td>
                <td>VS1</td>
                <td> EX/EX </td>
                <td>￥5,700 </td>
                <td>了解更多</td>
              </tr>
            </table>
            <ul class="PageSelect">
              <li>1/50</li>
              <li><a href="#"><img src="../images/pageselect_left.gif" /></a></li>
              <li><a href="#"><img src="../images/pageselect_next.gif" /></a></li>
              <li>
                <input name="textfield" type="text" class="input1" id="textfield" size="2" />
              </li>
              <li><a href="#"><img src="../images/pageselect_comfirm.gif" /></a></li>
            </ul>
            <div class="clearfix"></div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>商品名称： </td>
                <td><label>
                  <select name="select6" id="select6">
                    <option>请选择 </option>
                  </select>
                </label></td>
                <td>材质：</td>
                <td><select name="select6" id="select7">
                  <option>请选择 </option>
                </select></td>
                <td>珠宝：</td>
                <td><select name="select6" id="select8">
                  <option>请选择 </option>
                </select></td>
                <td>价格：</td>
                <td><select name="select6" id="select9">
                  <option>请选择 </option>
                </select></td>
                <td>关键字：</td>
                <td><select name="select6" id="select10">
                  <option>请选择 </option>
                </select></td>
                <td><label>
                  <input type="submit" class="btn1Style" name="button3" id="button3" value=" GO " />
                </label></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    	<div class="clearfix"></div>
        <div class="hr"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="cphTemplate" ID="Content3" runat="server">
</asp:Content>

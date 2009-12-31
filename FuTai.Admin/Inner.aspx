<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inner.aspx.cs" Inherits="FuTai.Admin.Inner" %>

<%@ Register src="Control/BehBottom.ascx" tagname="BehBottom" tagprefix="uc1" %>
<%@ Register src="Control/BehHead.ascx" tagname="BehHead" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>福泰珠宝</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/script/jquery-1.3.2.min.js"></script>
    <script type="text/javascript">
        var _ordlist;
        var tablehtml;
        var ordertype="all";
        var page=18;
        var nowpage=1;
        
        $(document).ready(function() {
           GetOrderList(ordertype);
            
});
        function GetOrderList(type) { 
             _ordlist = ManageAjax.GetOrder(type);
            tablehtml = '<table border="0"cellpadding="0"cellspacing="0"width="100%"class="Ctb"><tr><th>订单编号</th><th>姓名</th><th>性别</th><th>电话号码</th><th>城市</th><th>地址</th><th>用户说明</th><th>订购产品</th><th>用户昵称</th><th>订单日期</th><th>订单状态</th><th>操作</th></tr>';
            ordertype=type;
        
            if (!_ordlist.error) {
                MakeSlipt();
                var ordlist = _ordlist.value;
                if (ordlist.length == 0)
                {
                    $("#OrdList").html('<p style="text-align:center; padding-top:300px; padding-bottom:300px">无任何订单</p>');
                }
                else
                {
                    if (ordlist.length<=page)
                        nowpage=1;
                        
                    var start=(nowpage-1)*18;
                    var ntart=start+page;
                    var Len=(ordlist.length-start)<page?ordlist.length:(ntart>ordlist.length?ordlist.length:ntart);
                    for (var i=start;i<Len;i++)
                    {
                        var liobj=ordlist[i];
                        tablehtml+='<tr>';
                        tablehtml+='<td>'+liobj["OrderId"]+'</td>';
                        tablehtml+='<td>'+liobj["CuName"]+'</td>';
                        tablehtml+='<td>'+(liobj["CuSex"]==true?"男":"女")+'</td>';
                        tablehtml+='<td>'+liobj["phone"]+'</td>';
                        tablehtml+='<td>'+liobj["city"]+'</td>';
                        tablehtml+='<td>'+liobj["maddress"]+'</td>';
                        tablehtml+='<td>'+liobj["speical"]+'</td>';
                        
                        var proarr=liobj["ProductName"].split(",");
                        var pronum=liobj["ProductNum"].split(",");
                        var proprice=liobj["productPrice"].split(",");
                        var prodis=liobj["productDis"].split(",");
                        
                        tablehtml+='<td>'
                        for (var j=0;j<proarr.length;j++)
                        {
                            var jnum=parseInt(pronum[j]);
                            var jdis=parseInt(prodis[j]);
                            var jprice=parseInt(parseInt(proprice[j])*jdis/100);
                            tablehtml+=proarr[j]+' &nbsp;￥'+jprice+' x '+jnum+' = '+jprice*jnum;
                            tablehtml+='<br />';
                            
                        }
                        tablehtml+='</td>'
                        tablehtml+='<td>'+liobj["UserNick"]+'</td>';
                        tablehtml+='<td>'+liobj["CreateDate"].toLocaleString()+'</td>';
                        tablehtml+='<td style="color:red">'+(liobj["IsChecked"]==true?"已处理":"未处理")+'</td>';
                        var IsChecked=liobj["IsChecked"];
                        if (IsChecked)
                            tablehtml+='<td><a href="javascript:void(0)" onclick="makepro(\''+liobj["OrderId"]+'\')">标记为未处理</a> &nbsp;<a href="javascript:void(0)" onclick="delpro(\''+liobj["OrderId"]+'\')">删除</a></td>';
                        else
                            tablehtml+='<td><a href="javascript:void(0)" onclick="makeunpro(\''+liobj["OrderId"]+'\')">标记为已处理</a> &nbsp;<a href="javascript:void(0)" onclick="delpro(\''+liobj["OrderId"]+'\')">删除</a></td>';
                                
                            
                        tablehtml+='</tr>';
                    }
                    tablehtml+='</table>';
                    $("#OrdList").html(tablehtml);
                }
            }
            else
                alert(_ordlist.error.Message);
            
        }
        function makepro(id)
        {
            var r=ManageAjax.Tack(id,false);
            if (!r.error)
            {
                alert("订单已标记为“未处理！");
                GetOrderList(ordertype);
            }
            else
                alert(r.error.Message);
        }
        function makeunpro(id)
        {
            var r=ManageAjax.Tack(id,true);
            if (!r.error)
            {
                alert("订单已标记为“已处理”！");
                GetOrderList(ordertype);
            }
            else
                alert(r.error.Message);
        }
        function delpro(id)
        {
            if (confirm("确定要删除该订单？"))
            {
                var r=ManageAjax.DelTack(id);
                if (!r.error)
                {
                    GetOrderList(ordertype);
                }
                else
                    alert(r.error.Message);
            }
        }
        function OrderSelect(obj,type)
        {
            $("#Llist a").each(function(){
                $(this).removeClass();
            });
            obj.className="now";
            obj.blur();
            nowpage=1;
            GetOrderList(type);
        }
        function MakeSlipt()
        {
            if (_ordlist.value.length<=18)
            {
                $("#Pre").hide();
                $("#Next").hide();
                $("#Nowp").html("1");
                $("#Call").html("1");
                $("#Pre2").hide();
                $("#Next2").hide();
                $("#Nowp2").html("1");
                $("#Call2").html("1");
            }
            else{
                $("#Pre").show();
                $("#Pre2").show();
                $("#Next").show();
                $("#Next2").show();
                var maxpage=Math.ceil(_ordlist.value.length/page);
                $("#Nowp").html(nowpage);
                $("#Call").html(maxpage);
                $("#Nowp2").html(nowpage);
                $("#Call2").html(maxpage);
                if (nowpage==1)
                {
                    $("#Pre").hide();
                    $("#Pre2").hide();
                }
                else if (nowpage==maxpage)
                {
                    $("#Next").hide();
                    $("#Next2").hide();
                }
            }
        }
        function Fpage(type)
        {
            var maxpage=Math.ceil(_ordlist.value.length/page);
            switch(type)
            {
                case "back":
                    if (nowpage>1)
                    {
                        nowpage-=1;
                        GetOrderList(ordertype);
                    }
                    else
                        alert('当前已是第一页！');
                    break;
                case "next":
                    if (nowpage==maxpage)
                        alert('当前已是最后一页！')
                    else
                    {
                        nowpage+=1;
                        GetOrderList(ordertype);
                    }
                    break;
                default:
                    break;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="NewWrap">
    <uc2:BehHead ID="BehHead1" runat="server" />
        <div class="Content">
            <p id="Llist" class="LinkList"><a href="javascript:void(0)" onclick="OrderSelect(this,'all')" class="now">全部订单</a> &nbsp; <a href="javascript:void(0)" onclick="OrderSelect(this,'yes')">已处理订单</a> &nbsp; <a href="javascript:void(0)" onclick="OrderSelect(this,'no')">未处理订单</a></p>
            <p class="Slipt"><a href="javascript:void(0)" id="Pre" onclick="Fpage('back')">上一页</a> <a href="javascript:void(0)" id="Next" onclick="Fpage('next')">下一页</a> 当前：<span id="Nowp"></span> /<span id="Call"></span></p>
            <div id="OrdList">
                <!--- 订单 --->
            </div>
            <p class="Slipt"><a href="javascript:void(0)" id="Pre2" onclick="Fpage('back')">上一页</a> <a href="javascript:void(0)" id="Next2" onclick="Fpage('next')">下一页</a> 当前：<span id="Nowp2"></span> /<span id="Call2"></span></p>
        </div>
    <uc1:BehBottom ID="BehBottom1" runat="server" />
</div>
    </form>
</body>
</html>

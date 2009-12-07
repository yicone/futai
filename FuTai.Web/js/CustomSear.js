function showDiaInfo(obj,clean,color,cut,polish,sym,dis,price, id,tid) {
    if ($("#" + id).get(0)) {
        $("#" + id).show();
    }
    else {
        var offset = $("#" + tid).offset();
        var DisCount = parseFloat(parseInt(dis) / 100);
        $("body").append('<div class="FloatDiamond" id="' + id + '"><img src="/images/far.gif"class="Far"/><p class="line">证书编号：<span class="redfont1">GIA</span></p><p class="line pt10">市场参考价：' + parseInt(price) + '元<br/>今日福泰价：<span class="redfont1">' + parseInt(price * DisCount) + '元</span></p><p class="line pt10" style="border-bottom:none">克拉重量：' + obj + '<br/>切工：' + cut + '<br/>颜色：' + color + '<br/>净度：' + clean + '<br/>对称性：' + sym + '<br/>抛光：' + polish + '<br/>形状：<br/>刻面：<br/>荧光：</p></div>');
        $("#" + id).css("top", offset.top-100 + "px").css("left", offset.left+130 + "px");
    }
}
function hideinfo(id) {
    if ($("#" + id).get(0)) {
        $("#" + id).hide();
    }
}

var CompareArr = [];
var CustomMak = {
    Search: function(Opt, Page) {
        this.ShowLoading();
        var Carat = Opt.CaratL == null ? null : (Opt.CaratL + "-" + Opt.CaratH);
        var Price = Opt.PriceL == null ? null : (Opt.PriceL + "-" + Opt.PriceH);
        var NowPage = Page ? Page : 1;
        $.ajax({
            url: "SearchMethod.aspx?ra=" + Math.random(),
            type: "POST",
            data: "CutStyle=" + Opt.CutStyle + "&Color=" + Opt.Color + "&Carat=" + Carat + "&Price=" + Price + "&Clarity=" + Opt.Clarity + "&Cut=" + Opt.Cut + "&Fluorescence=" + Opt.Fluorescence + "&Polishing=" + Opt.Polishing + "&Symmetry=" + Opt.Symmetry + "&page=" + NowPage,
            success: function(msg) {
                try {
                    $("#LoadForm").hide();
                    $("#Mask").hide();
                    var $target = $("#FuTb");
                    if ($("Mes", msg).size() > 0) {
                        var Count = $("Count", msg).text();
                        $("#NumDio").text(Count);
                        $target.html("<tr><th>选择</th><th>货号</th><th>重量</th><th>净度</th><th>颜色</th><th>切工</th><th>抛光</th><th>对称</th><th>证书</th><th>市场价</th><th>福泰价</th><th>明细</th></tr>");
                        $("Mes", msg).each(function(i) {
                            var DisCount = parseFloat(parseInt($("Discount", this).text()) / 100);
                            var DInfo = $("id", this).text() + "," + $("weight", this).text() + "," + $("clean", this).text() + "," + $("color", this).text() + "," + $("cut", this).text() + "," + $("polish", this).text() + "," + $("sym", this).text() + ",GIA," + parseInt($("price", this).text()) + "," + parseInt(parseInt($("price", this).text()) * DisCount);
                            var html = "<tr id='tr" + i + "' onmouseover='showDiaInfo(" + $("weight", this).text() + ",\"" + $("clean", this).text() + "\",\"" + $("color", this).text() + "\",\"" + $("cut", this).text() + "\",\"" + $("polish", this).text() + "\",\"" + $("sym", this).text() + "\",\"" + $("Discount", this).text() + "\",\"" + $("price", this).text() + "\",\"info" + i + "\",\"tr" + i + "\")' onmouseout='hideinfo(\"info" + i + "\")'><td><input type='checkbox' name='checkbox' id='Cbox" + i + "' DInfo='" + DInfo + "'  /></td><td>" + $("id", this).text() + "</td>";
                            html += "<td>" + $("weight", this).text() + "</td>";
                            html += "<td>" + $("clean", this).text() + "</td>";
                            html += "<td>" + $("color", this).text() + "</td>";
                            html += "<td>" + $("cut", this).text() + "</td>";
                            html += "<td>" + $("polish", this).text() + "</td>";
                            html += "<td>" + $("sym", this).text() + "</td>";
                            html += "<td>GIA</td><td>" + parseInt($("price", this).text()) + "</td><td>" + parseInt(parseInt($("price", this).text()) * DisCount) + "</td>";
                            html += "<td><a target='_blank' href='/ProductInfo.aspx?proid=" + $("id", this).text() + "'>了解详细</a></td>";
                            html += "</tr>";
                            $target.html($target.html() + html);
                        });
                        CustomMak.MakeSlipt(NowPage, Count);
                        var SPage = NowPage * 10 - 9;
                        var MPage = NowPage * 10;
                        MPage = MPage > Count ? Count : MPage;
                        $target.html($target.html() + '<tr><th colspan="12"align="right">总计产品共' + Count + '件 <span class="redfont1">当前：' + SPage + ' - ' + MPage + '件</span></th></tr>');
                    }
                    else {
                        $target.html("<tr><th>选择</th><th>货号</th><th>重量</th><th>净度</th><th>颜色</th><th>切工</th><th>抛光</th><th>对称</th><th>证书</th><th>市场价</th><th>福泰价</th><th>明细</th></tr>");
                        $target.html($target.html() + '<tr><td colspan="12" height="100" align="center" valign="middle">没有搜索到相关记录</td></tr>');
                        $("#NumDio").text(0);
                    }
                }
                catch (e) {
                    //
                }
            }
        });
    },
    ShowLoading: function() {
        $("#Mask").css("height", $("#FuTaiZuan").height() + 40 + "px").show();
        $("#LoadForm").css("padding-top", ($("#FuTaiZuan").height() + 40) / 4 + "px").show();
    },
    MakeSlipt: function(now, count) {
        var MaxPage = Math.ceil(count / 10);
        $("#NowPage").text(now);
        $("#MPage").text(MaxPage);
        $("#NowPage2").text(now);
        $("#MPage2").text(MaxPage);
        G("Back").onclick = function() {
            var page = now - 1;
            if (page < 1)
                return false;
            else
                CustomMak.Search(CustomOpt, page);
        };
        G("Next").onclick = function() {
            var page = now + 1;
            if (page > MaxPage)
                return false;
            else
                CustomMak.Search(CustomOpt, page);
        };
        G("Back2").onclick = function() {
            var page = now - 1;
            if (page < 1)
                return false;
            else
                CustomMak.Search(CustomOpt, page);
        };
        G("Next2").onclick = function() {
            var page = now + 1;
            if (page > MaxPage)
                return false;
            else
                CustomMak.Search(CustomOpt, page);
        };
    },
    GoPage: function(page) {
        var ResPage = parseInt(page);
        var MinPage = 1;
        var MaxPage = parseFloat($("#MPage").text());
        if ((ResPage < MinPage || ResPage > MaxPage) || isNaN(MaxPage)) {
            alert("请输入正确的数字");
            return;
        }
        CustomMak.Search(CustomOpt, ResPage);
    },
    CompareDia: function() {
        CompareArr = [];
        $("#FuTb input[type='checkbox']").each(function() {
            if ($(this).attr("checked")) {
                CompareArr.push($(this).attr("DInfo"));
            }
        });
        if (CompareArr.length <= 1) {
            alert("请先选择对比的钻石");
            return false;
        }
        if (CompareArr.length >= 5) {
            alert("对比的钻石不得超过4颗");
            return false;
        }
        this.MadeList(CompareArr);
        $("#SearchResult").hide("slow", function() {
            $("#Compare").show("fast");
        })
    },
    MadeList: function(ListInfo) {
        if (ListInfo.length <= 1) {
            this.BackToList();
            return;
        }

        var $target = $("#CpDiv");
        var Gwidth = parseInt(100 / ListInfo.length);
        var html = "";
        for (var i = 0; i < ListInfo.length; i++) {
            var temp = ListInfo[i].split(",");
            if (i == (ListInfo.length - 1))
                html += '<div class="comparediv nrb" style="width:' + (Gwidth - 1) + '%"><ul>';
            else
                html += '<div class="comparediv" style="width:' + Gwidth + '%"><ul>';
            for (var j = 0; j < temp.length; j++) {
                if (j == 0)
                    html += '<li class="mybtn"><input type="button" name="mybt' + j + '" id="mybt' + j + '" class="btn1Style" value="删除" onclick="CustomMak.DelDiv(this,' + i + ')" /></li>';
                if (j == (temp.length - 1)) {
                    html += '<li>' + temp[j] + '</li>';
                    html += '<li><a href="/ProductInfo.aspx?proid=' + temp[0] + '" target="_blank">了解详情</a> &nbsp; <a href="javascript:AddCarList(\'' + temp[0] + '\')">立即购买</a></li>';
                    break;
                }

                html += '<li>' + temp[j] + '</li>';
            }
            html += '</ul></div>';
        }
        html += '<div class="clearfix"></div>';
        $target.html(html);
    },
    BackToList: function() {
        $("#Compare").hide("slow", function() {
            $("#SearchResult").show("fast");
        })
    },
    DelDiv: function(obj, listnum) {
        CompareArr.splice(listnum, 1);
        this.MadeList(CompareArr);
    }
}
function G(id) {
    return document.getElementById(id);
}


var CustomOpt = {
    CutStyle: null,
    Color: null,
    CaratL: null,
    CaratH: null,
    Clarity: null,
    PriceL: null,
    PriceH: null,
    Cut: null,
    Fluorescence: null,
    Polishing: null,
    Symmetry: null,
    SetModel: function(con) {
        this.CutStyle = con;
        CustomMak.Search(this);
    },
    SetModelHigh: function(con, obj) {
        if (obj.checked == true)
            this.CutStyle = this.AddChild(con, this.CutStyle);
        else
            this.CutStyle = this.RemoveChild(con, this.CutStyle);

        CustomMak.Search(this);
    },
    SetColor: function(con) {
        this.Color = con;
        CustomMak.Search(this);
    },
    SetColorHigh: function(con, obj) {
        if (obj.checked == true)
            this.Color = this.AddChild(con, this.Color);
        else
            this.Color = this.RemoveChild(con, this.Color);

        CustomMak.Search(this);
    },
    SetCarat: function(l, h) {    //克拉
        this.CaratL = l;
        this.CaratH = h;
        CustomMak.Search(this);
    },
    SetCaratHigh: function() {
        if (!this.CheckCarat())
            return false;

        this.CaratL = $("#CarLow").val();
        this.CaratH = $("#CarHi").val();
        CustomMak.Search(this);
    },
    CheckCarat: function() {
        var CL = parseFloat($("#CarLow").val());
        var CH = parseFloat($("#CarHi").val());
        if (!isNaN(CH) && !isNaN(CL) && CH > CL && CH <= 2.100 && CL >= 0.230)
            return true;
        else
            return false;
    },
    SetClarity: function(con) {   //净度
        this.Clarity = con;
        CustomMak.Search(this);
    },
    SetClarityHigh: function(con, obj) {
        if (obj.checked == true)
            this.Clarity = this.AddChild(con, this.Clarity);
        else
            this.Clarity = this.RemoveChild(con, this.Clarity);

        CustomMak.Search(this);
    },
    SetPrice: function(l, h) { //价格
        this.PriceL = l;
        this.PriceH = h;
        CustomMak.Search(this);
    },
    SetPricetHigh: function() {
        if (!this.CheckPrice())
            return false;

        this.PriceL = $("#PriceLow").val();
        this.PriceH = $("#PriceHigh").val();
        CustomMak.Search(this);
    },
    CheckPrice: function() {
        var CL = parseFloat($("#PriceLow").val());
        var CH = parseFloat($("#PriceHigh").val());
        if (!isNaN(CH) && !isNaN(CL) && CH > CL)
            return true;
        else
            return false;
    },
    SetCut: function(con) {     //切工
        this.Cut = con;
        CustomMak.Search(this);
    },
    SetCutHigh: function(con, obj) {
        if (obj.checked == true)
            this.Cut = this.AddChild(con, this.Cut);
        else
            this.Cut = this.RemoveChild(con, this.Cut);

        CustomMak.Search(this);
    },
    SetFluorescence: function(con) {
        this.Fluorescence = con;
        CustomMak.Search(this);
    },
    SetPolishing: function(con) {
        this.Polishing = con;
        CustomMak.Search(this);
    },
    SetSymmetry: function(con) {
        this.Symmetry = con;
        CustomMak.Search(this);
    },
    InitPeo: function() {
        this.CutStyle = null;
        this.Color = null;
        this.CaratL = null;
        this.CaratH = null;
        this.Clarity = null;
        this.PriceL = null;
        this.PriceH = null;
        this.Cut = null;
        this.Fluorescence = null;
        this.Polishing = null;
        this.Symmetry = null;
    },
    InitPeoHigh: function() {
        $("input[type='checkbox']").attr("checked", false);
        $("input[type='text']").attr("value", "");
        this.InitPeo();
    },
    AddChild: function(con, val) {
        var ReValue;
        if (val == null || val == "")
            ReValue = con;
        else if (val.search(con) == -1) {
            ReValue = val + "|" + con;
        }
        return ReValue;
    },
    RemoveChild: function(con, val) {
        var ReValue;
        if (val == null || val == "" || val == con)
            return null;
        if (val.search(con) == -1)
            return val;
        else {
            var Trr = val.split("|");
            var ConArr = con.split("|");
            for (var i = 0; i < Trr.length; i++) {
                for (var j = 0; j < ConArr.length; j++) {
                    if (Trr[i] == ConArr[j]) {
                        Trr.splice(i, 1);
                        i -= 1;
                        break;
                    }
                }
            }
            return Trr.join("|");
        }
    },
    SetKe:function(l,t,str,id)
    {
        $("#"+id+" span").html(str)
        $("#"+id).css({"left":l+"px","top":t+"px"}).show();
    },
    SetBlock:function(l,t,id)
    {
        $("#"+id).css({"left":l+"px","top":t+"px"}).show();
    }
    
}

function getUrlParam(name) 
{ 
	  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	  var r = window.location.search.substr(1).match(reg);
	  if (r != null) 
		return unescape(r[2]); 
	  else 
		return null;
}
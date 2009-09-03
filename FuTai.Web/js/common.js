// 扩展js的string类型, 使之具有类似.NET中的String.Format()的功能
function _StringFormatInline() {
    var txt = this;
    for (var i = 0; i < arguments.length; i++) {
        var exp = new RegExp('\\{' + (i) + '\\}', 'gm');
        txt = txt.replace(exp, arguments[i]);
    }
    return txt;
}

//example: var str = "This is a {0} string using the {1} method.".format("formatted","inline");
if (!String.prototype.format) {
    String.prototype.format = _StringFormatInline;
}

function renderTemplate(containerId, data) {
    $.jTemplatesDebugMode = true;
    $('#' + containerId).setTemplateElement(containerId + '-template');
    $('#' + containerId).processTemplate(data);
}

function regSwitchText($textbox, defaultWord) {
    $textbox.val(defaultWord).css('color', '#999');
    $textbox.blur(function() {
        if (!$textbox.val()) {
            $textbox.val(defaultWord);
            $textbox.css('color', '#999');
        } else if ($textbox.val() != defaultWord) {
            //$textbox.css('color', '#999');
        }
    }).focus(function() {
        if ($textbox.val() == defaultWord) {
            $textbox.val('');
        }
        $textbox.css('color', '#000');
    });
}

// 'Diamond','RingBracket','DiamondRing','PairRing','DiamondOrnament','GoldOrnament','Jewel'
// (Diamond)|(RingBracket)|(DiamondRing)|(PairRing)|(DiamondOrnament)|(GoldOrnament)|(Jewel)

var _productTypeList = new Array();
_productTypeList["Diamond"] = "裸钻";
_productTypeList["RingBracket"] = "戒托";
_productTypeList["DiamondRing"] = "钻戒";
_productTypeList["PairRing"] = "对戒";
_productTypeList["DiamondOrnament"] = "钻饰";
_productTypeList["GoldOrnament"] = "金饰";
_productTypeList["Jewel"] = "珠宝";

function renderProductType(key) {
    for (var k in _productTypeList) {
        if (k == key) {
            document.write(_productTypeList[k]);
            return;
        }
    }
}

var _header=new Array();
_header["CustomBuyCzuan"] = "Diamond";
_header["Default"]="Index";
_header["RingBracket"]="RingBracket";
_header["DiamondRing"]="DiamondRing";
_header["PairRing"]="PairRing";
_header["DiamondOrnament"]="DiamondOrnament";
_header["GoldOrnament"]="GoldOrnament";
_header["Jewel"]="Jewel";
_header["HighLevelProduct"]="JP";
_header["About"]="About";
var Header = {   //头操作
    Init: function() {
        var file = GetFile();
        if (file == "ProductList")
            file = getUrlParam("productType");

        file = file == null ? "Default" : file;
        this.SetMenu(file);
    },
    SetMenu: function(name) {
        $("a", "#topNav").each(function() {
            $(this).removeClass();
        });
        var NowHead = _header[name];
        $("#" + NowHead).addClass("now");
    }
}

function GetFile()  //取文件名
{
	var loca=window.location.toString();
	var newReg=/\/(\w+)(.aspx)/;
	var mathArray=loca.match(newReg);
	if (mathArray==null)
		return null
	else
		return unescape(mathArray[1]);
}

function getUrlParam(name)  //取值
{ 
	  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	  var r = window.location.search.substr(1).match(reg);
	  if (r != null) 
		return unescape(r[2]); 
	  else 
		return "Default";
}



var Category = function(name) {
    this.name = name;
    this.list = [];
    this.push = function(item) {
        this.list.push(item);
    };
}

//戒托
////(主钻镶嵌方式) 爪镶1 包镶2 卡镶3
////简单款1 小豪华2 超豪华3
//金饰
////戒指1 吊坠2 项链3 耳饰4 手镯手链5 金条6
////(商品) 千足金饰品1 素铂金饰品2
//情侣对戒
////素金对戒1 镶钻对戒2
//珠宝
////红宝石1 蓝宝石2 翡翠3 玛瑙4 紫水晶5 黄水晶6 其他宝石7
//钻戒
////男戒1 女戒2
//钻饰
////钻石吊坠1 钻石耳钉2 钻石项链3 钻石手链手镯4
function getCategoryList(productType) {
    var categoryList = [];
    if (productType == "RingBracket") {

        var category = new Category("主钻镶嵌方式");
        category.push({ "item": "爪镶", "typeId": "1", "onclick": "" });
        category.push({ "item": "包镶", "typeId": "2", "onclick": "" });
        category.push({ "item": "卡镶", "typeId": "3", "onclick": "" });
        categoryList.push(category);

        category = new Category("分类");
        category.push({ "item": "简单款", "typeId": "1", "onclick": "" });
        category.push({ "item": "小豪华", "typeId": "2", "onclick": "" });
        category.push({ "item": "超豪华", "typeId": "3", "onclick": "" });
        categoryList.push(category);

    } else if (productType == "GoldOrnament") {

        var category = new Category("商品");
        category.push({ "item": "千足金饰品", "typeId": "1", "onclick": "" });
        category.push({ "item": "素铂金饰品", "typeId": "2", "onclick": "" });
        categoryList.push(category);

        category = new Category("分类");
        category.push({ "item": "戒指", "typeId": "1", "onclick": "" });
        category.push({ "item": "吊坠", "typeId": "2", "onclick": "" });
        category.push({ "item": "项链", "typeId": "3", "onclick": "" });
        category.push({ "item": "耳饰", "typeId": "4", "onclick": "" });
        category.push({ "item": "手镯手链", "typeId": "5", "onclick": "" });
        category.push({ "item": "金条", "typeId": "6", "onclick": "" });
        categoryList.push(category);

    } else if (productType == "PairRing") {

        var category = new Category("分类");
        category.push({ "item": "素金对戒", "typeId": "1", "onclick": "" });
        category.push({ "item": "镶钻对戒", "typeId": "2", "onclick": "" });
        categoryList.push(category);

    } else if (productType == "Jewel") {

        var category = new Category("分类");
        category.push({ "item": "红宝石", "typeId": "1", "onclick": "" });
        category.push({ "item": "蓝宝石", "typeId": "2", "onclick": "" });
        category.push({ "item": "翡翠", "typeId": "3", "onclick": "" });
        category.push({ "item": "玛瑙", "typeId": "4", "onclick": "" });
        category.push({ "item": "紫水晶", "typeId": "5", "onclick": "" });
        category.push({ "item": "黄水晶", "typeId": "6", "onclick": "" });
        category.push({ "item": "其他宝石", "typeId": "7", "onclick": "" });
        categoryList.push(category);

    } else if (productType == "DiamondRing") {

        var category = new Category("分类");
        category.push({ "item": "男戒", "typeId": "1", "onclick": "" });
        category.push({ "item": "女戒", "typeId": "2", "onclick": "" });
        categoryList.push(category);

    } else if (productType == "DiamondOrnament") {

        var category = new Category("分类");
        category.push({ "item": "钻石吊坠", "typeId": "1", "onclick": "" });
        category.push({ "item": "钻石耳钉", "typeId": "2", "onclick": "" });
        category.push({ "item": "钻石项链", "typeId": "3", "onclick": "" });
        category.push({ "item": "钻石手链手镯", "typeId": "4", "onclick": "" });
        categoryList.push(category);
    }

    return categoryList;
}

var Query = function() {
    this.price1 = "",
    this.price2 = "",
    this.sort = "sales",   //sales(销量) time(上架时间), price(价格)
    this.order = "desc"
};

function search(productType, query, typeIdCollection) {
    var result;
    result = MyAjax.Search(productType, query.price1, query.price2, query.sort, query.order, typeIdCollection);

    if (!result.error) {
        if (!result.error) {
            var list = result.value;

            return list;
        }
    } else {
    alert(result.error.Message);
     }
}
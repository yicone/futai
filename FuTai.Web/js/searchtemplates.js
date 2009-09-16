var SerHigh=
{
    _productList:"",
    CommonHtml:"",
    HasType1:[false,""],
    HasType2:[false,""],
    ProductName:"",
    typeIdCollection:[],
    query:"",
    ProductT:"",
    _pagenow:1,
    showNum:12, //分页显示条目
    _pagecount:"",
    InitClass:function()
    {
        var ClassSet=document.getElementById("sel_ProductClass");
        for (var name in _productTypeList)
        {
            if (typeof(_productTypeList[name])!="function")
                ClassSet.options.add(new Option(_productTypeList[name],name));
        }
        ClassSet.onchange=function(){SerHigh.SetSubClass($(this).val());}
    },
    SetSubClass:function(cls)
    {
        if (cls!="none")
        {
            var MyList=getCategoryList(cls);
            var MyHtml="";
            for (var i=0;i<MyList.length;i++)
            {
                MyHtml+=' <span id="typet'+(i+1)+'">'+MyList[i].name+'</span>： <select id="type'+(i+1)+'"><option selected>全部</option>';
                var List=MyList[i].list;
                for (var j=0;j<List.length;j++)
                {
                    MyHtml+='<option value="'+List[j]["typeId"]+'">'+List[j]["item"]+'</option>';
                }
                MyHtml+='</select> ';
            }
            $("#HighBar").html(MyHtml);
        }
    },
    Go:function(isBtnEvt)
    {
        if ($("#sel_ProductClass").val()=="none")
        {
            alert("请选择产品分类");
            return;
        }
        if (isBtnEvt)
        this._pagenow=1;
        
        $("#ResultTb").hide();
        $("#LoadForm").show("fast",function(){
            SerHigh.HSearch(isBtnEvt);
        });
    },
    HSearch:function(IsGo)
    {
        if (IsGo)
        {
            this.ProductT = $('#sel_ProductClass').val();
            this.ProductName=$('#sel_ProductClass option:selected').text();
            var price1 = $('#sel_Price option:selected').attr('price1');
            var price2 = $('#sel_Price option:selected').attr('price2');
            this.typeIdCollection=[];
            $('#HighBar').find('select').each(function(i) {
                var typeId = $(this).val();
                SerHigh.typeIdCollection.push(typeId);
            });
            if ($("#type1").size()==1)
            {
                this.HasType1=[true,$("#typet1").text()];
                var TempArr=[];
                $("#type1 option").each(function(){
                    if ($(this).text()!="全部")
                    TempArr.push($(this).text());
                });
                this.HasType1[2]=TempArr;
            }
            else
                this.HasType1[0]=false;
                
            if ($("#type2").size()==1)
            {
                this.HasType2=[true,$("#typet2").text()];
                var TempArr=[];
                $("#type2 option").each(function(){
                    if ($(this).text()!="全部")
                    TempArr.push($(this).text());
                });
                this.HasType2[2]=TempArr;
            }
            else
                this.HasType2[0]=false;
                
            
            this.query = new Query();
            this.query.price1 = $('#sel_Price option:selected').attr('price1');
            this.query.price2 = $('#sel_Price option:selected').attr('price2');
        }
        
        this._productList = search(this.ProductT, this.query, this.typeIdCollection);
        this._pagecount= Math.ceil(this._productList.length/this.showNum);
        if (this._pagecount==0)
        {
            this.SetNoInfo();
            return;
        }
            
        $("#PageS").text(this._pagenow+"/"+this._pagecount);
        this.SetTable();
    },
    SetNoInfo:function()
    {
        $("#PageS").text("0/0");
        $("#ResultTb").html('<p style="text-align:center;padding-top:150px; padding-bottom:200px; font-size:14px">没有搜索到任何记录！</p>');
        $("#ResultTb").show("fast",function(){
            $("#LoadForm").hide();
        });
    },
    SetTable:function()
    {
        var TempHtml='<table width="100%" border="0" cellspacing="0" cellpadding="0" class="cartTable"><tr><th>钻石类型</th><th>编号</th>';
        var ProStart=(this._pagenow-1)*this.showNum;
        var ProEnd=this._pagenow==this._pagecount?this._productList.length:(this._pagenow*this.showNum);
        if (this.HasType1[0]) 
            TempHtml+='<th>'+this.HasType1[1]+'</th>';
        if (this.HasType2[0]) 
            TempHtml+='<th>'+this.HasType2[1]+'</th>';   
            
        TempHtml+='<th>会员折扣</th><th>生产地区</th><th>销售价格</th><th>详情</th></tr>';    
        for (var i=ProStart;i<ProEnd;i++)
        {
            var CurObj=this._productList[i];
            var type1=CurObj["Type1"]==undefined?"无":this.HasType1[2][CurObj["Type1"]-1];
            var type2=CurObj["Type2"]==undefined?"无":this.HasType2[2][CurObj["Type2"]-1];
            var Accacount=CurObj["DiscountType"]==null?"无":CurObj["DiscountType"];
            var Location=CurObj["Location"]==""?"未知":CurObj["Location"];
            var Sprice=CurObj["Price"]==""?"未知":CurObj["Price"];
            TempHtml+='<tr><td>'+this.ProductName+'</td><td>'+CurObj["ProductId"]+'</td>';
            if (this.HasType1[0])
                TempHtml+='<td>'+type1+'</td>';
            if (this.HasType2[0])
                TempHtml+='<td>'+type2+'</td>';
            
            TempHtml+='<td>'+Accacount+'</td><td>'+Location+'</td><td>'+Sprice+'</td><td><a target="_blank" href="/ProductInfo.aspx?proid='+CurObj["ProductId"]+'">了解详情</a></td></tr>';
        }
        
        TempHtml+='</table>';
        $("#ResultTb").html(TempHtml);
        $("#ResultTb").show("fast",function(){
            $("#LoadForm").hide();
        });
    },
    ShowPage:function(type)
    {
        switch(type)
        {
            case "pre":
                if (this._pagenow>1)
                    this._pagenow-=1;
                else
                    return;
                break;
            case "next":
                if (this._pagenow+1<=this._pagecount)
                    this._pagenow+=1;
                else
                    return;
                break;
            case "custom":
                var Pnum=$("#pageSi").val();
                if (!isNaN(Pnum) && Pnum>0 && Pnum<=this._pagecount)
                    this._pagenow=Pnum;
                else
                {
                    return;
                }
                break;
            default:
                break;
        }
        this.Go();
    }
}
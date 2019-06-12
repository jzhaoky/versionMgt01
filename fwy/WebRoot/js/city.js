var Citys=new Array(
new Array("",""),
new Array("上海市","黄浦区"),
new Array("上海市","徐汇区"),
new Array("上海市","长宁区"),
new Array("上海市","静安区"),
new Array("上海市","普陀区"),
new Array("上海市","虹口区"),
new Array("上海市","杨浦区"),
new Array("上海市","闵行区"),
new Array("上海市","宝山区"),
new Array("上海市","嘉定区"),
new Array("上海市","浦东新区"),
new Array("上海市","金山区"),
new Array("上海市","松江区"),
new Array("上海市","青浦区"),
new Array("上海市","奉贤区"),
new Array("上海市","崇明区"),
new Array("上海市","其它")
);

function initCity(obj,city){
	 
	 for(i=1;i<Citys.length;i++)
	    {
			 $(obj).append("<option value='"+Citys[i][1]+"'>"+Citys[i][1]+"</option>");
	    }
	 
	 if( "" != city )
		 $(obj).val(city);
}

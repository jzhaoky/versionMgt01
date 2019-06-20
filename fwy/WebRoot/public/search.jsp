<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<form id="searchForm" name="searchForm" action="/product/product_list.do" method="post">
<input id="area" name="area" value="${condition.area}" type="hidden" />
<input id="serviceType" name="serviceType" value="" type="hidden" />
<input id="serviceTypeSub" name="serviceTypeSub" value="" type="hidden" />
<input id="serviceTag" name="serviceTag" value="" type="hidden" />
<input id="productTarget" name="productTarget" value="" type="hidden" />
<input name="pageNo" value="${condition.pageNo}" type="hidden" />
<input id="productType" name="productType" value="${condition.productType}" type="hidden" />
<input id="priceType" name="priceType" value="${condition.priceType}" type="hidden" />
<input id="employeeNum" name="employeeNum" value="" type="hidden" />
<input id="productNature" name="productNature" value="${condition.productNature}" type="hidden" />
<input id="city" name="city" value="${condition.city}" type="hidden" />
<input id="sort" name="sort" value="" type="hidden" />
<input id="searchType" name="searchType" value="" type="hidden" />
<div class="row page_header">
		<div class="page_con">
			<a class="page_title clear" href="#"><img src="/images/logo_cs_cloud.png" width="300"/></a>
			<p class="tel_hot"><i class="icon_tel"></i>技术支持：<span>021-64225181<br/>021-64229015</span></p>
			<div class="search_m">
				<div class="s_condition">
					<ul class="s_list">
						<li class="cur">找服务</li>
						<li>找店铺</li>
						<li>找政策</li>
					</ul>
				</div>
				<div class="search_box">
					<div class="search_wrap">
						<input id="search-keywords-input" type="text" value="${condition.keywords}" class="s_inp" name="keywords"   placeholder="请输入关键字查询" />
						<input type="text" style="display: none"/>
						<ul class="suggest" id="suggest" style="width: 400px;z-index: 1000;height: 150px;font-size: 15px;display: none;">
						</ul>
					</div>
					<a href="JavaScript:void(0)" onclick="query()" class="btn_s">搜索</a>
					<i class="icon_s"></i>
				</div>
			</div>
			<a class="shop_car" href="<s:property value='@com.wondersgroup.common.constants.ConfigConstants@OUT_CALL_ROOT'/>buyer/shoppingCart!cartList.do">
				<i class="icon_car"></i>
				<span class="shop_text">我的购物车</span>
				<i class="circle shopping_cart_num">0</i>
			</a>
		</div>
	</div>
</form>
<script>
$(function() {
    $("#search-keywords-input").keypress(function(event){
        if (event.keyCode == "13"){
        	query();
            return;
        }
    });
    
    $("#search-keywords-input").keydown('input propertychange',function(){
    	  var keywords = $("#search-keywords-input").val();
    	  if($.trim(keywords).length>1){
    		  $.ajax({
      			url: "suggest_word_list.do",
      	        type: "post",
      	        data:{keywords:keywords},
      	        success: function (result, textStatus, jqXHR) {
      	        	var resobj = null;
    	        	try {
    	        		alert(result);
    	        	   resobj = eval("(" + result + ")");
      	        	 if(resobj.length>0){
      	        		$("#suggest").html("");
 	        		   $("#suggest").show();
    	        	   for(var k in resobj){
    	        		   $("#suggest").append("<li class='suggest-li'>"+resobj[k]+"</li>");
    	        	   }
 	        	     }
    	        	}catch (e) {
    	        		jAlert("提交失败！系统错误！");
    	        		//console.log(e);
                    }
      	        },
      	        error: function (err) {
      	            //jAlert("请求失败！系统错误！");
      	              //console.log(err);
      	           }
      		});
    	  }
   	});
    
    $("#search-keywords-input").focus(function(){
	    $("#suggest").hide();
    	$("#suggest").html("");
    });
})

function query() {
	$("#sort").val("");
	sort();
}

function sort() {
    $("input[name='pageNo']").val(1);
	var obj = $(".s_list .cur");
	$("#searchForm").attr("action",$(obj).data("action"));
	$("#searchForm").submit();
}
</script>
  <style type="text/css">
  	.suggest-li{
  		background-color: silver;
  		height: 30px;
  		vertical-align: middle;
  	}
  </style>
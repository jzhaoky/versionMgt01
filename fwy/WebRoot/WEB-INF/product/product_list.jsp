<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品搜索列表_上海市企业服务云</title>
	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/common.css">
	<link href="<%=path%>/css/jquery-ui/jquery-ui-1.11.4.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/css/jquery-ui/jquery-ui-1.11.4-ext.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=path%>/js/jquery-1.9.1.min.js"></script>
</head>
<body>
	<!-- head -->
	<jsp:include page="/public/head.jsp"/>
	<!--search-->
	<jsp:include page="/public/search.jsp"/>
	<!--nav_top-->
	<jsp:include page="/public/nav_top.jsp"/>
    
    <div class="crumb">
	    <div class="page_con">
	        <p>首页 &gt;&nbsp;服务搜索列表</p>
	    </div>
 	</div>
	<div class="page_con">
		<div class="filter_info">
		    <c:choose>
		    	<c:when test="${ not empty condition.keywords && condition.keywords ne '' }">
		    		<span>找到</span><span class="filter_name">"${condition.keywords}"</span><span>筛选</span>
		    	</c:when>
		    	<c:when test="${ not empty condition.serviceType && condition.serviceType ne '' }">
		    		<span>找到</span><span class="filter_name">"${condition.serviceType}"</span><span>筛选</span>
		    	</c:when>
		    	<c:otherwise></c:otherwise>
		    </c:choose>
			<span>共<i>${page.totalSize}</i>项服务</span>
			<c:if test="${not empty condition.serviceType}">
				<span class="selected_item" modelType="serviceType"><em>${condition.serviceType}</em><i></i></span>
				<s:if test="${not empty condition.serviceTypeSub}"> ,</s:if>
			</c:if>
			<c:if test="${not empty condition.serviceTypeSub}">
				- <span class="selected_item" modelType="serviceTypeSub"><em>${condition.serviceTypeSub}</em><i></i></span>
				<s:if test="${not empty condition.serviceTag}"> ,</s:if>
			</c:if>
			<c:if test="${not empty condition.serviceTag}">
				<s:iterator value="${fn:split(condition.serviceTag,' ')}" var="tag" status="st">
				${st.first?' - ':' '}<span class="selected_item service_tag_span"  modelType="serviceTag"><em>${tag}</em><i></i></span>
				</s:iterator> ，
			</c:if>
			<c:if test="${not empty condition.productTarget}">
				<span class="selected_item" modelType="productTarget"><em>${condition.productTarget}</em><i></i></span> ,
			</c:if>
			<c:if test="${not empty condition.priceType}">
				<span class="selected_item" modelType="priceType"><em>${condition.priceType}</em><i></i></span> ,
			</c:if>
			<c:if test="${not empty condition.employeeNum}">
				<span class="selected_item" modelType="employeeNum"><em>${condition.employeeNum}</em><i></i></span> ,
			</c:if>
			<c:if test="${not empty condition.area}">
				<span class="selected_item" modelType="area"><em>${condition.area}</em><i></i></span>
			</c:if>	
		</div>
    		<div class="filter_wrap">
    			<div class="category clear hide">
    				<div class="category_class">服务分类：</div>
    				<div class="category_value">
    					<ul class="category_list" title="serviceType">
							
							    <li data-key="02010000">创业服务</li>
							
							    <li data-key="02020000">科技创新</li>
							
							    <li data-key="02030000">知识产权</li>
							
							    <li data-key="02040000">市场拓展</li>
							
							    <li data-key="02050000">人力资源</li>
							
							    <li data-key="02060000">投融资服务</li>
							
							    <li data-key="02070000">改制上市</li>
							
							    <li data-key="02080000">管理咨询</li>
							
							    <li data-key="02090000">法律服务</li>
							
							    <li data-key="02100000">商务服务</li>
							
    					</ul>
    				</div>
    				
    			</div>
    			
    			
    			<div class="category clear hide">
    				<div class="category_class">服务对象：</div>
    				<div class="category_value">
    					<ul class="category_list" title="productTarget">
							
							    <li>微型企业</li>
							
							    <li>小型企业</li>
							
							    <li>中型企业</li>
							
							    <li>大型企业</li>
							
							    <li>创业个人或团队</li>
							
							    <li>个体工商户</li>
							
							    <li>其他</li>
							
    					</ul>
    				</div>
    			</div>
				<div class="category clear">
					<div class="category_class">收费模式：</div>
					<div class="category_value">
						
						<ul class="category_list" title="priceType">
							<c:forEach items="免费,收费,面议" var="item">
								<li <c:if test="${condition.priceType eq item}">class="current"</c:if>>${item }</li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
				<div class="category clear hide">
					<div class="category_class">机构人数：</div>
					<div class="category_value">
						<ul class="category_list" title="employeeNum">
							
								<li>10人以下</li>
							
								<li>10-99人</li>
							
								<li>100-299人</li>
							
								<li>300人及以上</li>
							
						</ul>
					</div>
				</div>
    			<div class="category clear">
    				<div class="category_class">机构所在区域：</div>
    				<div class="category_value">
    					<ul id="area-ul" class="category_list" title="area">
						</ul>
    				</div>
    			</div>
    			<script type="text/javascript" src="/js/city.js"></script> 
    			<script>
	    			for(i=1;i<Citys.length;i++)
	    		    {
	    				 $("#area-ul").append("<li "+("${condition.area}"==Citys[i][1]?"class='current'":"")+">"+Citys[i][1]+"</li>");
	    		    }
    			</script>
    		</div>
		<div class="rank">
			<button>成交量<i class="dw"></i></button>
			
			<button>上线时间<i class="dw"></i></button>
			<input id="publicProduct" type="checkbox" value="公共服务" onclick="chooseProductNature(this);"  <c:if test='${"公共服务" eq condition.productNature }'>checked="checked"</c:if>>
			<label for="publicProduct">公共服务</label>
			<input id="socialProduct" type="checkbox" value="专业服务" onclick="chooseProductNature(this);"  <c:if test='${"专业服务" eq condition.productNature }'>checked="checked"</c:if>>
			<label for="socialProduct">专业服务</label>
			
		</div>
		<c:choose>
		 <c:when test="${page.totalSize==0 || empty page.totalSize}">
		 	<div class="error_area">
				<div class="error_img">
					<img src="/images/img_no_data.png">
				</div>
				<p class="error_p">未搜索到服务</p>
			</div>
		 </c:when>
		<c:otherwise>
			<div class="model_con goods_list">
		<ul class="gl_wrap clear">
			<c:forEach items="${page.result}" var="searchResult" varStatus="st">
				<li class="gl_item">
					<div class="gl_i_wrap">
						<div class="g_img">
						   <span class="g_label <c:if  test='${"SERVICE" eq  searchResult.productType}'>g_label_d</c:if>" ><p>${'ACTIVITY' eq searchResult.productType?'活动':'服务'}</p></span>
						   <span class="g_type <c:if test='${"SOCIAL" eq  searchResult.serviceNature}'>g_orange</c:if>" >
							<c:set var="pNature" value=""></c:set>
							<c:choose>
								<c:when test="${'ACTIVITY' eq searchResult.productType}">
									<c:choose>
										<c:when test="${'PUBLIC' eq searchResult.serviceNature}">
											<c:set var="pNature" value="公共活动"></c:set>
										</c:when>
										<c:otherwise>
											<c:set var="pNature" value="专业活动"></c:set>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:set var="pNature" value="${'PUBLIC' eq searchResult.serviceNature?'公共服务':'专业服务'}"></c:set>
								</c:otherwise>
							</c:choose>
							${pNature}
							</span>
							<a target="_blank">
								<img src="http://127.0.0.1/entsrv_cloud/uploads/${searchResult.picPath}" width="210" height="180" class="err_prouct">
							</a>
						</div>
						   <div class="g_price clear">
							<!--收费模式计算 -->
							
							<strong class="fL nomore">${searchResult.priceType}</strong>
							</div>
						<div class="g_text">
							<span class="g_title clear">${searchResult.productName}</span>
							<em class="g_com">${searchResult.shopName}</em>
						</div>
						<div class="g_position">
							<div class="g_area">
								<i class="icon_area"></i>
								<span>${searchResult.city}</span>
							</div>
								<a href="javascript:void(0);" onclick="pop_login_show('ntalkerAdmin()');" class="g_guest"></a>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>
		</div>
		</c:otherwise>
		</c:choose>
		
		<div class="n_row">
			 <div class="pagination-holder clearfix" style="display: inline-block;">
				<div id="light-pagination" class="pagination"></div>
				<p class="n_info">共<span><s:property value="page.totalPageCount"/></span>页，到第&nbsp;<input id="pageNo" type="text">&nbsp;页<a  href="javascript:goPage($('#pageNo').val())" class="btn_q">确定</a></p>
		  	 </div>
		</div>
	</div>
	<!-- foot -->
	<%@include file="/public/foot.jsp"%>


<script type="text/javascript" src="/js/jquery.simplePagination.js"></script>   <!--分页插件-->
<script type="text/javascript" src="/js/custom.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/js/jquery-ui-1.11.4.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/js/jquery-ui-dialog-ext.js"></script>
<script type="text/javascript" src="<%=path%>/js/custom.js"></script>
<script type="text/javascript" src="<%=path%>/js/comboBox.js"></script>
	
<script type="text/javascript">
	$(function(){
		//筛选条件选择
	$(".level li").hover(function(){
		$(this).siblings().removeClass("current");
		$(this).addClass("current");
		var offsetH = $(this).offset().top; console.log(offsetH)
		if(offsetH==286 || offsetH==376 || offsetH==424){
		   $(this).parent().parent().next(".category_sub").css({"margin-top":"0"+"px"});
		   $(this).parent().parent().next(".category_sub").show();
		}else if($(this).text()=="全部"){
			$(this).parent().parent().next(".category_sub").hide();
		}else{
		   $(this).parent().parent().next(".category_sub").css({"margin-top":"-42"+"px"});
		   $(this).parent().parent().next(".category_sub").show();
		}

	  },function(){
		$(this).parent().parent().next(".category_sub").hide();
	});
			//分页
	$('#light-pagination').pagination({
		items: '${page.totalSize}', //总数目
		cssStyle: 'light-theme',
		itemsOnPage:20, //每页显示条数 （items/itemsOnPage等于页数）
		displayedPages: 4, //初始化左边的分页个数
		edges: 3, //最边上显示的分页个数
		currentPage: '${page.currentPageNo}', //当前页数
		hrefTextPrefix: 'javascript:goPage(',
		hrefTextSuffix:')',
	});
	   
	
});
	
	function goPage() {
		$("input[name='pageNo']").val(arguments[0]);
        var obj = $(".s_list .cur");
        $("#searchForm").attr("action",$(obj).data("action"));
        $("#searchForm").submit();
	}
	
	function chooseProductNature(){
		if($(arguments[0]).prop("checked")){	
			$("#productNature").val($(arguments[0]).val());
		}else{
			$("#productNature").val("");
		}
		$("#searchForm").submit();
	}
	

	$(".category_list li:not(.current),.category_sublist li:not(.current)").click(function(){
		if($(this).parent().prop("title")=="serviceType"){
			$("#serviceTypeSub").val("");
			$("#serviceTag").val("");
		}else if($(this).parent().prop("title")=="serviceTypeSub"){
			$("#serviceTag").val("");
		}
		if($(this).hasClass("service_tag_li")){
			$target.val($target.val()+$(this).text()+" ");
			$.each($(this).siblings(".current"),function(){
				$target.val($target.val().replace($(this).text()+" ",""));
			})
		}else{
			$("#"+$(this).parent().prop("title")).val($(this).text());
		}
		$(this).siblings().removeClass("current");
		$(this).addClass("current");
		sort();
	});

	$(".selected_item i").click(function(){
		if($(this).parent().hasClass("service_tag_span")){
			var $target = $("#"+$(this).parent().attr("modelType"));
			$target.val($target.val().replace($(this).prev().text()+" ",""));
		}else{
			$("#"+$(this).parent().attr("modelType")).val("");
		}
		if($(this).parent().attr("modelType")=="serviceType"){
			$("#serviceTypeSub").val("");
			$("#serviceTag").val("");
		}else if($(this).parent().attr("modelType")=="serviceTypeSub"){
			$("#serviceTag").val("");
		}
		sort();
	});
	
	$(".dw").parent().click(function(){
		if($(this).text()=="上线时间"){
			$("#sort").val("modifyTime");
		}else if($(this).text()=="成交量"){
			$("#sort").val("order");
		}
		sort();
	});
</script>
</body>
</html>
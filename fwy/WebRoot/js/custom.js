$(function() {

	//条件选择
	$(".s_list li").click(function(e) {
		$(".cur").removeClass("cur");
		$(e.target).addClass("cur")
	});

	//顶部头像下拉
	$(".site_nav_user").mouseenter(function() {
		$('.site_nav_user').css({
			'background': '#fff'
		});
		$('.site_nav_menu_panel').css({
			'display': 'block',
			'top': '30' + 'px'
		});
	}).mouseleave(function() {
		$('.site_nav_user').css({
			'background': 'transparent'
		});
		$('.site_nav_menu_panel').css({
			'display': 'none'
		});
	});


	//计算高度
	var comHeight = $('.cs_item_info_r').height();
	var nameHeight = $('.cs_shop_bg').height();
	var infoHeight = $('.cs_shop_info').height();
	var frameHeight = comHeight - nameHeight - 180;
	$('.red_border').css({
		'height': comHeight - 20 + 'px'
	});
	$('.cs_shop_wrap').css({
		'height': comHeight - nameHeight - 80
	});
	if(infoHeight > frameHeight){
		$('.cs_shop_info').css({
				'height': frameHeight
		});
		$('.cs_shop_info').append(' <div class="cs_shop_cover"><a href="###" class="toggle_down">展开</a></div>');
	}
	else{};
	$('.toggle_down').click(function(){
		if (!$(this).hasClass('toggle_up')){
			$('.cs_shop_info').css({
					'height': 'auto'
			});
			$(this).parent("div").removeClass('cs_shop_cover').addClass('cs_shop_line');
			$(this).removeClass('toggle_down').addClass('toggle_up');
			$(this).text("收起");
		}
		else{
			$('.cs_shop_info').css({
					'height': frameHeight
			});
			$(this).parent("div").removeClass('cs_shop_line').addClass('cs_shop_cover');
			$(this).removeClass('toggle_up').addClass('toggle_down');
			$(this).text("展开");
		}
	});


	//菜单导航展开
	$(".nav_type").hover(function() {
		$(".n_type").show();
	}, function() {
		$(".n_type").hide();
	});
	$(".n_type").hover(function() {
		$(this).show();
	}, function() {
		$(this).hide();
	});


	$(".category_list li").click(function(){
		$(this).siblings().removeClass("current");
		$(this).addClass("current");
		var index = $(this).attr("index");
		if(index != null){
			$(this).parent().parent().siblings(".category_sub").children().hide();
			$(this).parent().parent().siblings(".category_sub").children("#"+index).show();
		}
	});

    //点击
	$(document).on("click", ".category_sublist li", function(){
		$(this).addClass("current").siblings("li").removeClass("current");
	});
	

	
	//限制字符个数
	$(".skin_t").each(function(){
	var maxwidth=16;
	if($(this).text().length>maxwidth){
		$(this).text($(this).text().substring(0,maxwidth));
		$(this).html($(this).html()+'…');
	}
	});
	

});
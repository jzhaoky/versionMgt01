<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="cs_top">
	<s:set name="userInfo" value="@com.wondersgroup.common.security.UserSecurityContextUtil@getUserInfo()"/>
	<div class="page_con clear">
		<ul class="site_nav_list">
			<li>
				<div class="site_nav_menu_hd">
					<div class="site_nav_user clear">
						<a href="/buyer/buyerCentral.do" class="light">小猿</a>
						<span class="site_nav_arrow"></span>
						<div class="site_nav_menu_panel">
							<div class="site_nav_user_wrapper ">
								<a href="/buyer/buyerCentral.do" class="site_nav_user_avatar">
									<img src="/images/pic_index.png"/>
								</a>
							</div>
							<div class="site_nav_user_info">
								<p class="site_nav_user_operate">
									<a href="/buyer/setting!userInfo.do">账号管理</a>
									<span class="site_nav_pipe">|</span>
									<a href="/user/logout.do">退出</a>
								</p>
								<p class="level_info ">企业用户 </p>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="site_nav_menu_hd">
					<div class="site_nav_sign">
						<a href="#">欢迎来到上海企业服务云</a>
					</div>
				</div>
			</li>
		</ul>
		<ul class="btn_top">
			<li><i class="icon_exit"></i>
				<a href="/user/logout.do">退出</a>
			</li>
		</ul>
	</div>
</div>

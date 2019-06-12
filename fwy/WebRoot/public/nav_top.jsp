<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="nav_top">
	<div class="nav_line page_con">
		<!--nav_type-->
		<div class="nav_type">
			<div class="nav_left" id="nav_top">
				<i class="nav_icon"></i>
				<h2>服务资源库</h2>
			</div>
			<div class="n_type" style="display: none;">
				<dl>
					
						<dt onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_cy"></i>
							创业服务
						<div class="sv_float">
							<h5>创业服务</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('商务计划书编制');">商务计划书编制</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('创业辅导');">创业辅导</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('创业培训');">创业培训</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('创业场地');">创业场地</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('公司注册');">公司注册</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('资质认证');">资质认证</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('创业服务');$('#serviceTypeSub').val('代理记帐');">代理记帐</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_kj"></i>
							科技创新
						<div class="sv_float">
							<h5>科技创新</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('产学研联合');">产学研联合</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('技术转移和成果转化');">技术转移和成果转化</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('创新资源共享');">创新资源共享</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('工业设计');">工业设计</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('技术咨询');">技术咨询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('适用技术推广');">适用技术推广</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('质量检验检测');">质量检验检测</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('质量管理体系建立');">质量管理体系建立</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('体系和产品认证');">体系和产品认证</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('质量控制和技术评价');">质量控制和技术评价</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('技术信息查询');">技术信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('产品信息查询');">产品信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('标准信息查询');">标准信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('信息化人才培训');">信息化人才培训</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('网站建设维护');">网站建设维护</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('软件开发');">软件开发</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('信息系统集成服务');">信息系统集成服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('数据处理与存储');">数据处理与存储</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('APP服务');">APP服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('科技创新');$('#serviceTypeSub').val('信息安全测评');">信息安全测评</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_zs"></i>
							知识产权
						<div class="sv_float">
							<h5>知识产权</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('商标注册');">商标注册</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('专利申请');">专利申请</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('专利信息查询');">专利信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('软件、集成电路布图设计等的申请代理');">软件、集成电路布图设计等的申请代理</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('知识产权鉴定');">知识产权鉴定</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('知识产权交易代理');">知识产权交易代理</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('知识产权');$('#serviceTypeSub').val('无形资产评估');">无形资产评估</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_sc"></i>
							市场拓展
						<div class="sv_float">
							<h5>市场拓展</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('对外合作交流');">对外合作交流</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('市场推广');">市场推广</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('政府采购');">政府采购</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('展览展销');">展览展销</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('市场调查');">市场调查</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('产品推介');">产品推介</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('电子商务');">电子商务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('外贸代理');">外贸代理</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('市场考察');">市场考察</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('市场信息查询');">市场信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('商检报关');">商检报关</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('市场拓展');$('#serviceTypeSub').val('出口退税');">出口退税</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_rl"></i>
							人力资源
						<div class="sv_float">
							<h5>人力资源</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('人才招聘');">人才招聘</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('人才信息查询');">人才信息查询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('人才测评');">人才测评</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('技能评级');">技能评级</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('职称评审');">职称评审</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('资质评审');">资质评审</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('劳务派遣');">劳务派遣</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('财税管理培训');">财税管理培训</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('拓展训练');">拓展训练</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('猎头服务');">猎头服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('人力资源');$('#serviceTypeSub').val('人力资源管理咨询');">人力资源管理咨询</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_tr"></i>
							投融资服务
						<div class="sv_float">
							<h5>投融资服务</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('贷款服务');">贷款服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('股权融资');">股权融资</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('票据融资');">票据融资</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('融资培训');">融资培训</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('融资租赁');">融资租赁</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('融资对接');">融资对接</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('保险服务');">保险服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('保险经纪与代理服务');">保险经纪与代理服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('信用评估');">信用评估</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('担保服务');">担保服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('典当');">典当</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('投融资服务');$('#serviceTypeSub').val('货币金融服务');">货币金融服务</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_gz"></i>
							改制上市
						<div class="sv_float">
							<h5>改制上市</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('上市培训');">上市培训</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('券商服务');">券商服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('律师服务');">律师服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('会计师服务');">会计师服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('股权激励服务');">股权激励服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('改制上市');$('#serviceTypeSub').val('企业估值服务');">企业估值服务</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_gl"></i>
							管理咨询
						<div class="sv_float">
							<h5>管理咨询</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('战略管理咨询');">战略管理咨询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('财务审计');">财务审计</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('税务服务');">税务服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('资产评估');">资产评估</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('商务咨询服务');">商务咨询服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('生产运营管理咨询');">生产运营管理咨询</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('管理咨询');$('#serviceTypeSub').val('安全生产服务');">安全生产服务</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_fl"></i>
							法律服务
						<div class="sv_float">
							<h5>法律服务</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('诉讼代理');">诉讼代理</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('法律援助');">法律援助</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('法律文书代理');">法律文书代理</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('公证服务');">公证服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('仲裁服务');">仲裁服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('调解服务');">调解服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('风险规避');">风险规避</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('法律服务');$('#serviceTypeSub').val('法律咨询');">法律咨询</a>
								
							</p>
						</div>
						</dt>
					
						<dt onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('');$('.s_list li:eq(0)').addClass('cur').siblings().removeClass('cur');query()">
							<i class="icon_nav icon_sw"></i>
							商务服务
						<div class="sv_float">
							<h5>商务服务</h5>
							<p>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('广告宣传');">广告宣传</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('翻译服务');">翻译服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('电信服务');">电信服务</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('品牌策划');">品牌策划</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('创意设计');">创意设计</a>
								
									<a href="javascript:void(0)" onclick="$('#serviceType').val('商务服务');$('#serviceTypeSub').val('装饰装潢');">装饰装潢</a>
								
							</p>
						</div>
						</dt>
					

				</dl>

			</div>
		</div>
		<ul class="nav">
			<li><a href="/">首页</a></li>
				
			
			
			<li>
				<a href="javascript:void(0)" onclick="JumpAppealAssess();">诉求反映</a></li>
			<li>
				<a href="/invest/invest!investShangHai.do">投资上海</a></li>
			<li>
				<a href="javascript:void(0)" onclick="JumpDeopAssess();">发展环境评估</a>
			</li>
			<li><a href="/public/centralEntAbutment!centerEnterprises.do">央企对接</a></li>
			<li><a href="/public/volunteer!service.do">志愿服务</a></li>
<!-- 			<li><a href="http://hdpt.ssme.gov.cn/" target="_blank">运行监测</a></li> -->
			<li>
			<a href="javascript:void(0)" onclick="jumpOmLogin();">运行监测</a>
<!-- 				<a href="#">运行监测</a> -->
<!-- 				<div class="second_nav_li"> -->
<!-- 					<a class="sec1" href="javascript:void(0)" onclick="jumpOmLogin();">服务云入口</a> -->
<!-- 					<a class="sec1" href="javascript:void(0)" onclick="JumpOmAssess();">互动平台入口</a> -->
<!-- 				</div> -->
			</li>
			<li><a href="javascript:void(0)" onclick="JumpOnlineApply();">网上申报</a></li>
			<li class="btn_friendly_link"><a href="#" style="padding-right:31px;">友情链接<i class="tri"></i>  </a>
                        <div class="panel_friendly_link">
                            <dl class="dl_nav_second">
                                <dd><a onclick="fnOtherSys(&quot;wszc&quot;)" href="javascript:void(0)">网上注册</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;zlsq&quot;)" href="javascript:void(0)">专利申请</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;smcxpt&quot;)" href="javascript:void(0)">商贸诚信平台</a></dd>
                                <dd><a href="http://www.ssme.sh.gov.cn/public/taxFilingAcceptance!corpTax.do">网上办税</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;zfcg&quot;)" href="javascript:void(0)">政府采购</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;gsnbgsxt&quot;)" href="javascript:void(0)">工商年报公示系统</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;yfpt&quot;)" href="javascript:void(0)">研发平台</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;ggzp&quot;)" href="javascript:void(0)">公共招聘</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;lhcqjys&quot;)" href="javascript:void(0)">联合产权交易所</a></dd>
                                <!-- <dd><a onclick='fnOtherSys("kjcxqsq")' href="javascript:void(0)">科技创新券申请</a></dd> -->
                                <dd><a href="/public/home!talentApartment.do">公租房申请</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;scfwpt&quot;)" href="javascript:void(0)">电源双创平台</a></dd>
                                <!-- <dd><a onclick='fnOtherSys("yqsbgx")' href="javascript:void(0)">仪器设备共享</a></dd> -->
                                <!-- <dd><a onclick='fnUser3CheckLogin("SHZXSMLTQYFW")' href="javascript:void(0)">商贸流通平台</a></dd> -->
                                <dd><a onclick="fnOtherSys(&quot;SHZXSMLTQYFW&quot;)" href="javascript:void(0)">商贸流通平台</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;SHSKJCXPT&quot;)" href="javascript:void(0)">上海市科技创新券平台</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;SHKJCXZYSJZX&quot;)" href="javascript:void(0)">上海科技创新资源数据中心</a></dd>
                                <dd><a onclick="fnOtherSys(&quot;SHDXYQSSXXFW&quot;)" href="javascript:void(0)">上海大型仪器设施信息服务数据库</a></dd>
                            </dl>
                        </div>
                    </li>
		</ul>
	</div>
</div>

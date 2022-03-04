<@menuTag method="list">
	<div class="header">
		<div class="header-wrapper">
			<div class="header-nav app-nav">
				<div class="containers nav">
					<#if settings.logo?? && settings.logo?trim!=''>
						<div class="app-logo">
							<img src="${settings.logo!}" height="20" width="295" alt="">
						</div>
					</#if>
					<nav class="primary-nav">
						<ul>
							<#list menus?sort_by('priority') as menu>
							<li>
								<a href="${menu.url}" target="${menu.target!}">
									${menu.name}
								</a>
							</li>
							</#list>
							<#--  <li>	
								<div>
									<button type="button" class="el-button el-button--primary el-button--medium">
										
										<span>
											登录
										</span>
									</button>
								</div>
							</li>  -->
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="page-banner" style="background:url(${settings.header_banner!}) #021c3a bottom no-repeat;">
			<div class="bg-overlay">
			</div>
		</div>
	</div>
</@menuTag>
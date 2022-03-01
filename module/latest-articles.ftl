<div class="content">
	<div class="siteforceSldsOneColLayout siteforceContentArea">
		<div class="slds-col--padded comm-content-header comm-layout-column">
			<div data-region-name="header">
				<div data-priority="" class="ui-widget">
				</div>
			</div>
		</div>
		<div class="slds-col--padded contentRegion comm-layout-column">
			<div data-region-name="content">
				<div data-priority="" class="ui-widget">
				</div>
				<div data-priority="" class="ui-widget">
					<div class="cRecommendedArticles">
						<div class="recommendation-header">
							<div class="recommendation-title">
								最新内容
							</div>
						</div>
						<div class="CoveoV2SearchUI">
						</div>
						<div class="CoveoV2SearchUI">
							<div id="search" class="CoveoSearchInterface CoveoUserProfileModel Coveostate CoveoComponentState CoveoComponentOptions CoveoQueryController coveo-after-initialization CoveoDebug"
							data-hide-if-no-results="false" data-design="new" 
							style="display: block;">
								<div class="CoveoAnalytics">
								</div>
								<div class="CoveoRecommendationPadding" data-recommendation="recommendedArticles">
								</div>
								<div class="coveo-recommendation-body">
									<div class="CoveoResultList">
										<div class="coveo-result-list-container coveo-list-layout-container">
										<@postTag method="latest" top="6">
											<#list posts as post>
												<div class="coveo-list-layout CoveoResult">
													<div class="coveo-result-frame">
														<div class="title-section">
															<span class="icon-section">
																<div class="CoveoVMwareIcon">
																	<span>
																		<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 36 36"
																		height="36" width="36">
																			<rect fill="#0091DA" rx="3" height="20" width="20" y="2" x="2">
																			</rect>
																			<path fill="white" d="M8.132 6.6H13.756L17 9.768V17.036C17.0067 17.4483 16.6802 17.7891 16.268 17.8H8.132C7.71981 17.7891 7.39328 17.4483 7.4 17.036V7.364C7.39328 6.95172 7.71981 6.61091 8.132 6.6ZM13.4 7.336V10.2H16.32L13.4 7.336Z"
																			clip-rule="evenodd" fill-rule="evenodd">
																			</path>
																		</svg>
																	</span>
																</div>
															</span>
															${post.slug} •
															<span class="link-section">
																<a id="ArticleResultLink"
																class="CoveoResultLink" tabindex="0" role="heading" aria-level="2" href="${post.fullPath}">
																	${post.title}
																</a>
															</span>
															<div style="clear:both;">
															</div>
														</div>
														<div class="content-section">
															<div class="CoveoExcerpt">
																${post.summary!}...
															</div>
														</div>
														<div class="post-footer">
															<div class="meta">
																<div class="info">
																	<i class="fa fa-sun-o"></i>
																	<span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
																	<i class="fa fa-comment-o"></i>
																	<a href="${post.fullPath!}#comment_widget">Comments</a>
																	<#if post.tags?size gt 0>
																		<i class="fa fa-tag"></i>
																		<#list post.tags as tag>
																			<#if tag?index lt 2>
																			    <a href="${tag.fullPath}" class="tag">&nbsp;${tag.name}</a>
																			</#if>
																		</#list>
																	</#if>
																</div>
															</div>
														</div>
													</div>
												</div>
											</#list>
										</@postTag>
										</div>
									</div>
								</div>
								<div aria-live="polite" class="coveo-visible-to-screen-reader-only">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slds-col--padded comm-content-footer comm-layout-column">
		</div>
	</div>
</div>
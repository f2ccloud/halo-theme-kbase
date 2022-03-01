<div class="search">
	<form class="joe_header__above-search" method="get" id="myForm" name=”form” action="${blog_url!}/search">
		<div data-region-name="search">
			<div data-priority="" class="ui-widget">
				<div class="landing-page searchbox-active cCommunitySearchboxExternal">
					<div class="searchbox-wrapper">
						<div class="searchbox-title">
							${blog_title!}
						</div>
						<div class="CoveoV2SearchUI CoveoV2CommunitySearchBox"
						data-aura-class="CoveoV2SearchUI CoveoV2CommunitySearchBox">
						</div>
						<div class="CoveoV2SearchUI CoveoV2CommunitySearchBox"
						data-aura-class="CoveoV2SearchUI CoveoV2CommunitySearchBox">
							<div id="standaloneSearchbox" class="CoveoSearchInterface CoveoUserProfileModel Coveostate CoveoComponentState CoveoComponentOptions CoveoQueryController coveo-after-initialization CoveoDebug"
							style="display: block;">
								<div class="coveo-hidden-facets">
								</div>
								<div class="CoveoAnalytics">
								</div>
								<div type="text" class="CoveoStandaloneSearchbox magic-box magic-box-inline CoveoOmnibox"
								aria-expanded="false" role="combobox" aria-owns="coveo-magicbox-suggestions"
								aria-haspopup="listbox">
									<div class="coveo-field-value-suggestions">
									</div>
									<div class="CoveoSearchButton coveo-accessible-button"
									role="button" aria-label="搜索" tabindex="0" onclick="formSubmit()">
										<span class="coveo-icon">
										</span>
										<span class="coveo-search-button">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" alt="Search"
											class="coveo-search-button-svg">
												<g fill="currentColor">
													<path d="m8.368 16.736c-4.614 0-8.368-3.754-8.368-8.368s3.754-8.368 8.368-8.368 8.368 3.754 8.368 8.368-3.754 8.368-8.368 8.368m0-14.161c-3.195 0-5.793 2.599-5.793 5.793s2.599 5.793 5.793 5.793 5.793-2.599 5.793-5.793-2.599-5.793-5.793-5.793"
													class="coveo-magnifier-circle-svg">
													</path>
													<path d="m18.713 20c-.329 0-.659-.126-.91-.377l-4.552-4.551c-.503-.503-.503-1.318 0-1.82.503-.503 1.318-.503 1.82 0l4.552 4.551c.503.503.503 1.318 0 1.82-.252.251-.581.377-.91.377">
													</path>
												</g>
											</svg>
										</span>
										<span class="coveo-search-button-loading">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18" alt="Loading"
											class="coveo-search-button-loading-svg">
												<g fill="currentColor">
													<path d="m16.76 8.051c-.448 0-.855-.303-.969-.757-.78-3.117-3.573-5.294-6.791-5.294s-6.01 2.177-6.79 5.294c-.134.537-.679.861-1.213.727-.536-.134-.861-.677-.728-1.212 1.004-4.009 4.594-6.809 8.731-6.809 4.138 0 7.728 2.8 8.73 6.809.135.536-.191 1.079-.727 1.213-.081.02-.162.029-.243.029z">
													</path>
													<path d="m9 18c-4.238 0-7.943-3.007-8.809-7.149-.113-.541.234-1.071.774-1.184.541-.112 1.071.232 1.184.773.674 3.222 3.555 5.56 6.851 5.56s6.178-2.338 6.852-5.56c.113-.539.634-.892 1.184-.773.54.112.887.643.773 1.184-.866 4.142-4.57 7.149-8.809 7.149z">
													</path>
												</g>
											</svg>
										</span>
									</div>
									<div class="magic-box-input">
										<div class="magic-box-underlay">
											<span class="magic-box-highlight-container">
												<span data-id="start" data-success="true">
													<span data-id="Start" data-success="true">
														<span data-id="Empty" data-success="true" data-value="">
														</span>
													</span>
												</span>
											</span>
											<span class="magic-box-ghost-text">
											</span>
										</div>
										<input type="text" role="searchbox" id="keyword" name="keyword" placeholder="搜索关键字、产品或问题..">
										<div class="magic-box-clear coveo-accessible-button" role="button" aria-label="Clear"
										tabindex="-1" aria-hidden="true">
											<div class="magic-box-icon">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 13 13" class="magic-box-clear-svg">
													<g fill="currentColor">
														<path d="m7.881 6.501 4.834-4.834c.38-.38.38-1.001 0-1.381s-1.001-.38-1.381 0l-4.834 4.834-4.834-4.835c-.38-.38-1.001-.38-1.381 0s-.38 1.001 0 1.381l4.834 4.834-4.834 4.834c-.38.38-.38 1.001 0 1.381s1.001.38 1.381 0l4.834-4.834 4.834 4.834c.38.38 1.001.38 1.381 0s .38-1.001 0-1.381z">
														</path>
													</g>
												</svg>
											</div>
										</div>
									</div>
									<div class="magic-box-suggestions">
										<div class="coveo-magicbox-suggestions" id="coveo-magicbox-suggestions"
										role="listbox">
											<div role="option">
											</div>
										</div>
									</div>
								</div>
								<div aria-live="polite" class="coveo-visible-to-screen-reader-only">
								</div>
							</div>
						</div>
						<div class="searchbox-footer-responsive">
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
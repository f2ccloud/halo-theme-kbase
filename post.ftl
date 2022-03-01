<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
<#include "module/common-search.ftl">
<div class="content">
	<div id="spinner" class="slds-hide">
		<lightning-spinner class="slds-spinner_container">
			<div role="status" class="slds-spinner slds-spinner_small">
				<span class="slds-assistive-text">
					Loading
				</span>
				<div class="slds-spinner__dot-a">
				</div>
				<div class="slds-spinner__dot-b">
				</div>
			</div>
		</lightning-spinner>
	</div>
	<article data-region-name="content" id="content" class="">
    <div id="contentContainer" class="slds-grid slds-wrap slds-medium-nowrap slds-large-nowrap">
			<div id="contentMain" class="markdown-body slds-col--padded slds-size--12-of-12 slds-medium-size--8-of-12 slds-large-size--8-of-12 comm-layout-column">
				<div id="articleContent">
					<div style="padding-bottom: 10px; padding-top: 10px" id="divLogo" class="visible-print">
                        <div class="slds-grid slds-wrap">
                            <div class="slds-col slds-size_1-of-4">
                                <#--  <img src="/themes/fit-theme/source/images/logo/logo-light-FIT2CLOUD.svg" alt="VMware" style="width: 70%; height: auto"
                                title="VMware" data-aura-rendered-by="195:0">  -->
                                <#--  <span style="font-size: 1.25em" data-aura-rendered-by="196:0">
                                    FIT2CLOUD 知识库
                                </span>  -->
                            </div>
                        </div>
                    </div>
                    <div id="article_content" >
                        <div class="container">
                                
                            <h1 id="heading" class="article_title slds-wrap slds-page-header__title slds-align-middle">
                                <a class="post-title-link" href="${post.fullPath}"itemprop="url">${post.title}</a>
                            </h1>
                            <div class="slds-grid slds-wrap slds-is-relative">
                                <span class="slds-col slds-grid slds-wrap sub-header slds-p-right_medium">
                                    <span class="slds-p-right_large">
                                        <span class="text">${post.commentCount} 评论</span>
                                        <span class="line">/</span>
                                        <span class="text">${post.likes} 点赞</span>
                                        <span class="line">/</span>
                                        <span class="text" >${post.visits} 阅读</span> 
                                    </span>  
                                    <span class="slds-p-right_large">
                                        <#if post.tags?size gt 0>
                                            <#list post.tags as tag>
                                                <#if tag?index lt 10>
                                                <span>
                                                    <i class="fa fa-tag">
                                                    </i>
                                                    <a href="${tag.fullPath}" class="tag">
                                                        &nbsp;${tag.name}
                                                    </a>
                                                </span>
                                                </#if>
                                            </#list>
                                        </#if>

                                        
                                    </span>
                                    
                                </span>
                                <span id="rightSideContent" class="slds-col slds-grid slds-wrap sub-header slds-p-vertical_xx-small slds-grid_align-end">                                    
                                    <span class="slds-p-right_large">
                                        <b>
                                            最后更新:
                                        </b>
                                        <span id="lastModifiedDate">
                                            ${post.editTime?string('yyyy-MM-dd')}
                                        </span>
                                        <span id="lastModifiedByUser">
                                        </span>
                                    </span>
                                    <span class="slds-p-right_large">
                                        <b>
                                            作者:
                                        </b>
                                        <span id="articleCategory">
                                            ${user.nickname!}
                                        </span>
                                    </span>
                                    <span class="slds-p-right_large">
                                        <b>
                                            总字数:
                                        </b>
                                        <span id="articleViews">
                                            ${post.wordCount?c}
                                        </span>
                                    </span>
                                </span>
                            </div>
                            <div id="mtDisclaimer" class="alert-banner">
                            </div>
						</div>
						<div class="page-break">
						</div>
						<div class="container">
							<div class="header section_header slds-p-top_large slds-p-bottom_xx-small"
							style="cursor: pointer">
								<#--  <span id="chevronContainer">
									<svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36" fill="#0095d3"
									height="20" width="20" class="chevron-down" id="chevronDiagram" version="1.1">
										<path d="M29.52,22.52,18,10.6,6.48,22.52a1.7,1.7,0,0,0,2.45,2.36L18,15.49l9.08,9.39a1.7,1.7,0,0,0,2.45-2.36Z">
										</path>
										<rect fill-opacity="0" height="36" width="36" y="0" x="0">
										</rect>
									</svg>
								</span>
								正文  -->
							</div>
							<div class="content">
								${post.formatContent!}
							</div>
						</div>
					
					</div>
				</div>
			</div>
			<div id="contentSidebar" class="slds-col--padded slds-size--12-of-12 slds-medium-size--4-of-12 slds-large-size--4-of-12 comm-layout-column">

				<div id="sidebarSection1">
					<div class="relatedResources cAdditionalResources">
						<div class="section_header slds-p-top_large slds-p-bottom_xx-small">
							其他资源
						</div>
						<div class="related-resources-wrapper">

							<div class="CoveoV2SearchUI">
							</div>
							<div  class="CoveoV2SearchUI" data-aura-class="CoveoV2SearchUI">
                                <div id="search" class="CoveoSearchInterface white CoveoUserProfileModel Coveostate CoveoComponentState CoveoComponentOptions CoveoQueryController CoveoHistoryController coveo-after-initialization CoveoDebug"
                                data-enable-history="true" data-design="new" style="display: block;">
                                <div class="CoveoAnalytics">
                                </div>
                                <div class="CoveoCommunityStateManager">
                                </div>
                                <div class="CoveoRecommendationPadding" data-recommendation="additionalResources">
                                </div>
                                <div class="coveo-results-column">
                                    <div class="CoveoErrorReport" aria-hidden="true" style="display: none;">
                                    <div class="coveo-error-report-container">
                                        <div class="coveo-error-report-title">
                                        </div>
                                        <div class="coveo-error-report-message">
                                        </div>
                                    </div>
                                    </div>
                                    <div class="CoveoTriggers">
                                    </div>
                                    <div class="CoveoResultList" data-layout="list" data-wait-animation="none"
                                    data-auto-select-fields-to-include="false">
                                    <div class="coveo-result-list-container coveo-list-layout-container" id="coveo-result-list-container">
                                        
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
            
		</div>
        <div id="articleFooter" style="position: relative; width: 100%; bottom: 0px; right: 0px;transition: width 3s ease 0.1s;">
            <#--  <c-kb-article-feedback>
                <div c-kbarticlefeedback_kbarticlefeedback="" class="slds-box slds-align_absolute-center slds-m-vertical_xx-large">
                    <div c-kbarticlefeedback_kbarticlefeedback="">
                        <label c-kbarticlefeedback_kbarticlefeedback="" class="header-text slds-align_absolute-center">
                            是否有帮助
                        </label>
                        <div c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-vertical_small slds-grid slds-gutters slds-align_absolute-center">
                            <button c-kbarticlefeedback_kbarticlefeedback="" name="yes" class="slds-button slds-p-right_medium fb-button">
                                <c-kb-svg-icons c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-horizontal_x-small">
                                    <svg fill="#007cbb" width="24" height="24" viewBox="0 0 36 36" xmlns="http://www.w3.org/2000/svg">
                                        <title>
                                            Yes
                                        </title>
                                        <path fill="#007cbb" d="M24,26c-2.92,1.82-7.3,4-9.37,4h-6a16.68,16.68,0,0,1-3.31-6.08A26.71,26.71,0,0,1,4,16h9V6a2.05,2.05,0,0,1,1.26-1.69c.77,2,2.62,6.57,4.23,8.72A11.39,11.39,0,0,0,24,16.91V14.78a9.13,9.13,0,0,1-3.91-3c-1.88-2.51-4.29-9.11-4.31-9.17A1,1,0,0,0,14.59,2C13.25,2.38,11,3.6,11,6v8H3a1,1,0,0,0-1,1,29,29,0,0,0,1.4,9.62c1.89,5.4,4.1,7.14,4.2,7.22a1,1,0,0,0,.61.21h6.42c2.43,0,6.55-2,9.37-3.63Z"
                                        class="clr-i-outline clr-i-outline-path-1">
                                        </path>
                                        <path fill="#007cbb" d="M34,31H27a1,1,0,0,1-1-1V14a1,1,0,0,1,1-1h7Zm-6-2h4V15H28Z"
                                        class="clr-i-outline clr-i-outline-path-2">
                                        </path>
                                        <rect x="0" y="0" width="36" height="36" fill-opacity="0">
                                        </rect>
                                    </svg>
                                </c-kb-svg-icons>
                                YES
                            </button>
                            <button c-kbarticlefeedback_kbarticlefeedback="" name="no" class="slds-button slds-p-left_medium fb-button">
                                <c-kb-svg-icons c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-horizontal_x-small">
                                    <svg fill="#007cbb" width="24" height="24" viewBox="0 0 36 36" xmlns="http://www.w3.org/2000/svg">
                                        <title>
                                            No
                                        </title>
                                        <path d="M12,10c2.92-1.82,7.3-4,9.37-4h6a16.68,16.68,0,0,1,3.31,6.08A26.71,26.71,0,0,1,32,20H23V30a2.05,2.05,0,0,1-1.26,1.69c-.77-2-2.62-6.57-4.23-8.72A11.39,11.39,0,0,0,12,19.09v2.13a9.13,9.13,0,0,1,3.91,3c1.88,2.51,4.29,9.11,4.31,9.17a1,1,0,0,0,1.19.63C22.75,33.62,25,32.4,25,30V22h8a1,1,0,0,0,1-1,29,29,0,0,0-1.4-9.62c-1.89-5.4-4.1-7.14-4.2-7.22A1,1,0,0,0,27.79,4H21.37C18.94,4,14.83,6,12,7.63Z"
                                        class="clr-i-outline clr-i-outline-path-1">
                                        </path>
                                        <path d="M2,5H9a1,1,0,0,1,1,1V22a1,1,0,0,1-1,1H2ZM8,7H4V21H8Z" class="clr-i-outline clr-i-outline-path-2">
                                        </path>
                                        <rect x="0" y="0" width="36" height="36" fill-opacity="0">
                                        </rect>
                                    </svg>
                                </c-kb-svg-icons>
                                NO
                            </button>
                        </div>
                    </div>
                </div>
            </c-kb-article-feedback>  -->
        </div>
  </article>
</div>
<script>
function loadOtherArticle() {
    var keyword = localStorage.getItem("keyword");
    var cate = "${(post.categories[0].id)!''}";
    var tag = "${(post.tags[0].slug)!''}";

    if(keyword){
      this.getArticle("/api/content/posts", "get", {"keyword":keyword, "size":5});
    }else if(cate){
      this.getArticle("/api/content/posts", "get", {"categoryId":cate, "size":5});
    }else if(tag){
      this.getArticle("/api/content/tags/"+tag+"/posts", "get", {"size":5});
    }else{
      this.getArticle("/api/content/posts", "get", {"size":5});
    }
}
function getArticle(url, type, data){
  $.ajax({
        url: url,
        type: type,
        headers: {
            "API-Authorization": ThemeConfig.access_key || "fit2cloud",
        },
        dataType: "json",
        data: data,
        success: function(result) {
            var str = "";
            $.each(result.data.content,function(index,key){
                str += `<div class="coveo-list-layout CoveoResult">
                        <div class="flex align-center related-item">
                        <div class="icon-wrapper">
                            <div class="CoveoVMwareIcon">`
                            $.each(key.categories,function(index1,cate){
                                if(cate && index1 < 1 && cate.thumbnail){
                str +=              `<span>
                                        <img src="`+ cate.thumbnail +`" height="20" width="20"/>
                                    </span>`
                                }else{
                str +=              `<span>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 36 36"
                                        height="36" width="36">
                                            <rect fill="#0091DA" rx="3" height="20" width="20" y="2" x="2">
                                            </rect>
                                            <path fill="white" d="M8.132 6.6H13.756L17 9.768V17.036C17.0067 17.4483 16.6802 17.7891 16.268 17.8H8.132C7.71981 17.7891 7.39328 17.4483 7.4 17.036V7.364C7.39328 6.95172 7.71981 6.61091 8.132 6.6ZM13.4 7.336V10.2H16.32L13.4 7.336Z"
                                            clip-rule="evenodd" fill-rule="evenodd">
                                            </path>
                                        </svg>
                                    </span>`
                                }
                            })
                str +=      `</div>
                        </div>
                        <div class="v-align-middle">
                            <div class="coveo-title">`
                            $.each(key.categories,function(index1,cate){
                            if(cate && index1 < 1){
                str +=          `<span data-field="@commonsource" class="CoveoFieldValue">
                                <span>
                                    <a href="`+ cate.fullPath +`" target="_blank">
                                    `+ cate.name +`
                                    </a>
                                    </span>
                                </span>`
                            }
                            })
                str +=         `•
                            <a class="CoveoResultLink" tabindex="0" role="heading" aria-level="2" href="`+ key.fullPath +`" target="_blank">
                                `+ key.title +`
                            </a>
                            </div>
                        </div>
                        </div>
                    </div>`
            })
            $("#coveo-result-list-container").html(str);
        }
    });
}
loadOtherArticle();
</script>
<#include "module/comment.ftl">
<@comment post=post type="post" />
</@layout>



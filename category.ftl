<#include "module/macro.ftl">

<@layout title="${blog_title!}">
    <#include "module/common-search.ftl">
    <div class="content">
        <div class="siteforceSldsOneColLayout siteforceContentArea">
            <div class="slds-col--padded comm-content-header comm-layout-column">
            </div>
            <div class="slds-col--padded contentRegion comm-layout-column">
                <div data-region-name="content">
                    <div data-priority=""class="ui-widget">
                        <article class="slds-card CoveoV2CommunitySearch cCommunitySearchExternal">
                            <div class="slds-card">
                                <div class="CoveoV2SearchUI" data-aura-class="CoveoV2SearchUI">
                                </div>
                                <div class="CoveoV2SearchUI" data-aura-class="CoveoV2SearchUI">
                                    <div id="search" class="CoveoSearchInterface CoveoUserProfileModel Coveostate CoveoComponentState CoveoComponentOptions CoveoQueryController CoveoHistoryController coveo-after-initialization CoveoDebug"
                                    data-enable-history="true" data-design="new" style="display: block;">
                                        <div class="flex CoveoBackgroundManager white">
                                            <#include "module/category-left.ftl">
                                            <div class="coveo-results-column" id="div1">
                                                <#if posts.content?size gt 0>
                                                    <#include "module/articles-list.ftl">
                                                    <div class="pagination-section">
                                                        <div class="CoveoResultsPerPage">
                                                        </div>
                                                        <div class="CoveoPager">
                                                            <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                                                                <#if (posts.totalPages==0 )>
                                                                    
                                                                <#elseif (posts.totalPages==1 )>
                                                                <#else>
                                                                    <ul class="coveo-pager-list">
                                                                        <#if pagination.hasPrev>
                                                                            <li class="coveo-pager-previous coveo-pager-anchor coveo-pager-list-item coveo-accessible-button"
                                                                            role="button" aria-label="Previous" tabindex="0">
                                                                                <a title="Previous" href="${pagination.prevPageFullPath!}">
                                                                                    <span class="coveo-pager-previous-icon">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 20" alt="Left Arrow"
                                                                                        class="coveo-pager-previous-icon-svg">
                                                                                            <g fill="currentColor">
                                                                                                <path d="m10.692 1.811c.412-.413.411-1.086 0-1.5-.2-.201-.465-.311-.746-.311-.283 0-.548.11-.747.31l-8.892 8.939c-.198.2-.307.466-.307.75 0 .286.109.551.305.748l8.893 8.941c.2.201.466.312.748.312h.001c.281 0 .546-.11.745-.309.199-.201.308-.468.308-.753 0-.284-.109-.548-.306-.745l-8.146-8.194z">
                                                                                                </path>
                                                                                            </g>
                                                                                        </svg>
                                                                                    </span>
                                                                                </a>
                                                                            </li>
                                                                        </#if>
                                                                        <#list pagination.rainbowPages as number>
                                                                            <#if number.isCurrent>
                                                                                <li class="coveo-pager-list-item coveo-active coveo-accessible-button">
                                                                                    <a class="coveo-pager-list-item-text coveo-pager-anchor" nhref="${number.fullPath!}">
                                                                                        ${number.page!}
                                                                                    </a>
                                                                                </li>
                                                                            <#else>
                                                                                <li class="coveo-pager-list-item coveo-accessible-button">
                                                                                    <a class="coveo-pager-list-item-text coveo-pager-anchor" href="${number.fullPath!}">
                                                                                        ${number.page!}
                                                                                    </a>
                                                                                </li>
                                                                            </#if>
                                                                        </#list>
                                                                        <#if pagination.hasNext && (pagination.rainbowPages?size gt 0)>
                                                                            <li class="coveo-pager-next coveo-pager-anchor coveo-pager-list-item coveo-accessible-button"
                                                                            role="button" aria-label="Next" tabindex="0">
                                                                                <a title="Next" href="${pagination.nextPageFullPath!}">
                                                                                    <span class="coveo-pager-next-icon">
                                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 20" alt="Right Arrow"
                                                                                        class="coveo-pager-next-icon-svg">
                                                                                            <g fill="currentColor">
                                                                                                <path d="m .308 18.189c-.412.413-.411 1.086 0 1.5.2.201.465.311.746.311.282 0 .547-.11.747-.31l8.891-8.939c.199-.2.307-.466.307-.75 0-.286-.109-.551-.305-.748l-8.893-8.942c-.199-.2-.465-.311-.747-.311-.001 0-.001 0-.001 0-.281 0-.546.11-.745.309-.198.201-.308.468-.308.753 0 .284.11.548.306.745l8.145 8.193z">
                                                                                                </path>
                                                                                            </g>
                                                                                        </svg>
                                                                                    </span>
                                                                                </a>
                                                                            </li>
                                                                        </#if>
                                                                    </ul>
                                                                </#if>
                                                            </@paginationTag>
                                                        </div>
                                                    </div>
                                                <#else>
                                                    <#include "module/no-find.ftl">
                                                </#if>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
</@layout> 




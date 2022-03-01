<#--  <div class="coveo-results-header">
    <div class="coveo-summary-section">
        <span class="CoveoQuerySummary" data-enable-search-tips="false">
            <span>
               匹配数: ${posts.totalElements!}
            </span>
        </span>
        <span class="CoveoCustomNoResults">
        </span>
    </div>
</div>
<div class="CoveoCustomTriggers hidden">
    <div class="CoveoTriggers">
    </div>
</div>
<div class="CoveoCustomSearchInterface">
</div>  -->
<div class="CoveoResultList" data-layout="list" data-wait-animation="fade"
data-auto-select-fields-to-include="false">
    <div class="coveo-result-list-container coveo-list-layout-container">
        <ul class="joe_archive__list joe_list" data-wow="off">
            <#list posts.content as post>
                <div class="coveo-list-layout CoveoResult">
                    <div class="coveo-result-frame">
                        <div class="coveo-result-row">
                            <div class="coveo-result-cell icon-wrapper">
                                <div class="CoveoVMwareIcon">
                                    <#list post.categories as cate>
                                        <#if cate?index lt 1 && cate.thumbnail?? && cate.thumbnail?trim!=''>
                                        <span>
                                            <img src="${cate.thumbnail}" height="20" width="20"/>
                                        </span>
                                        <#else>
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
                                        </#if>
                                    </#list>
                                </div>
                            </div>
                            <div class="coveo-result-cell v-align-middle flex">
                                <div data-clickable="false" class="coveo-title CoveoCustomResultLinkWrapper">
                                    <#list post.categories as cate>
                                        <#if cate?index lt 1>
                                            <a data-title-template="" class="CoveoPivotalArticleResultLink CoveoResultLink"
                                        tabindex="0" role="heading" aria-level="2" href="${cate.fullPath}" target="_blank">
                                            ${cate.name}
                                            </a>
                                        </#if>
                                        •
                                    </#list>
                                    <a data-title-template="" class="CoveoPivotalArticleResultLink CoveoResultLink"
                                    tabindex="0" role="heading" aria-level="2" href="${post.fullPath}" target="_blank">
                                        ${post.title}
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="coveo-result-row">
                            <div class="coveo-result-cell">
                                <div class="CoveoExcerpt">
                                    ${post.summary!}...
                                </div>
                            </div>
                        </div>
                        <div class="coveo-result-row">
                            <div class="coveo-result-cell">
                                <div class="coveo-result-row">
                                    <div class="coveo-result-cell">
                                        <div data-separator="•" class="CoveoFieldValueDetails">
                                            <span data-text-caption="Language" data-field="@commonlanguage" class="CoveoFieldValue coveo-with-label">
                                                <#if post.tags?size gt 0>
                                                    <span class="coveo-field-caption">
                                                        标签
                                                    </span>
                                                    <#list post.tags as tag>
                                                        <#if tag?index lt 10>
                                                            <span role="button" aria-label="Filter on English" title="Filter on English"
                                                            tabindex="0" class="coveo-accessible-button coveo-clickable">
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
                                            <span class="separator">
                                                &nbsp;
                                            </span>
                                            <span data-text-caption="Products" data-field="@commonproduct" class="CoveoFieldValue coveo-with-label">
                                                <span class="coveo-field-caption">
                                                    日期
                                                </span>
                                                <span role="button" aria-label="Filter on VMware Tanzu Kubernetes Grid Integrated Edition"
                                                title="Filter on VMware Tanzu Kubernetes Grid Integrated Edition" tabindex="0"
                                                class="coveo-accessible-button coveo-clickable">
                                                    ${post.createTime?string("yyyy-MM-dd")}
                                                </span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="coveo-result-row">
                            <div class="coveo-result-cell">
                                <div class="CoveoMissingTerms">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </ul>
    </div>
</div>


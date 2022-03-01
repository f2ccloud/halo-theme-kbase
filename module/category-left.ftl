<div class="coveo-facet-column">
    <div class="CoveoFacet" data-title="Product" data-field="@commonproduct" data-is-multi-value-field="true">
        <#--  categary-start  -->
        <@categoryTag method="list">
            <div class="coveo-facet-header">
                <div class="coveo-facet-header-title-section">
                    <div class="coveo-facet-header-title" >
                        分类
                    </div>
                </div>
            </div>
            <#if categories?? && categories?size gt 0>
            <ul class="coveo-facet-values">
                <#list categories as category>
                    <li class="coveo-facet-value coveo-facet-selectable coveo-with-hover" >
                        <label class="coveo-facet-value-label">
                            <div class="coveo-facet-value-label-wrapper"><a href="${category.fullPath!}">
                                <input type="checkbox" aria-hidden="true" form="coveo-dummy-form">
                                <div class="coveo-facet-value-checkbox" tabindex="0" role="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 11" alt="Exclusion"
                                    class="coveo-facet-value-checkbox-svg">
                                        <g fill="none" class="coveo-more-svg">
                                            <path d="m10.083 4.583h-3.666v-3.666c0-.524-.393-.917-.917-.917s-.917.393-.917.917v3.667h-3.666c-.524-.001-.917.392-.917.916s.393.917.917.917h3.667v3.667c-.001.523.392.916.916.916s.917-.393.917-.917v-3.666h3.667c.523 0 .916-.393.916-.917-.001-.524-.394-.917-.917-.917z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-line-svg">
                                            <path d="m10 6.5h-9c-.552 0-1-.448-1-1 0-.552.448-1 1-1h9c .552 0 1 .448 1 1 0 .552-.448 1-1 1z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-exclusion-svg">
                                            <path d="m9.233 7.989-2.489-2.489 2.489-2.489c.356-.356.356-.889 0-1.244-.356-.356-.889-.356-1.244 0l-2.489 2.489-2.489-2.489c-.356-.356-.889-.356-1.244 0-.356.356-.356.889 0 1.244l2.489 2.489-2.489 2.489c-.356.356-.356.889 0 1.244.356.356.889.356 1.244 0l2.489-2.489 2.489 2.489c.356.356.889.356 1.244 0 .356-.355.356-.889 0-1.244z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-hook-svg">
                                            <path d="m10.252 2.213c-.155-.142-.354-.211-.573-.213-.215.005-.414.091-.561.24l-4.873 4.932-2.39-2.19c-.154-.144-.385-.214-.57-.214-.214.004-.415.09-.563.24-.148.147-.227.343-.222.549.005.207.093.4.249.542l2.905 2.662c.168.154.388.239.618.239h.022.003c.237-.007.457-.101.618-.266l5.362-5.428c.148-.148.228-.344.223-.551s-.093-.399-.248-.542z">
                                            </path>
                                        </g>
                                    </svg>
                                </div>
                                <span class="coveo-facet-value-count">
                                    
                                </span>
                                    <span class="coveo-facet-value-caption" title="${category.name}" data-original-value="${category.name}">
                                        ${category.name}
                                    </span>
                                </a>
                            </div>
                        </label>
                        <div title="" class="coveo-facet-value-exclude"
                        tabindex="0" role="button">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 11" alt="Exclusion"
                            class="coveo-facet-value-exclude-svg">
                                <g fill="none" class="coveo-more-svg">
                                    <path d="m10.083 4.583h-3.666v-3.666c0-.524-.393-.917-.917-.917s-.917.393-.917.917v3.667h-3.666c-.524-.001-.917.392-.917.916s.393.917.917.917h3.667v3.667c-.001.523.392.916.916.916s.917-.393.917-.917v-3.666h3.667c.523 0 .916-.393.916-.917-.001-.524-.394-.917-.917-.917z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-line-svg">
                                    <path d="m10 6.5h-9c-.552 0-1-.448-1-1 0-.552.448-1 1-1h9c .552 0 1 .448 1 1 0 .552-.448 1-1 1z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-exclusion-svg">
                                    <path d="m9.233 7.989-2.489-2.489 2.489-2.489c.356-.356.356-.889 0-1.244-.356-.356-.889-.356-1.244 0l-2.489 2.489-2.489-2.489c-.356-.356-.889-.356-1.244 0-.356.356-.356.889 0 1.244l2.489 2.489-2.489 2.489c-.356.356-.356.889 0 1.244.356.356.889.356 1.244 0l2.489-2.489 2.489 2.489c.356.356.889.356 1.244 0 .356-.355.356-.889 0-1.244z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-hook-svg">
                                    <path d="m10.252 2.213c-.155-.142-.354-.211-.573-.213-.215.005-.414.091-.561.24l-4.873 4.932-2.39-2.19c-.154-.144-.385-.214-.57-.214-.214.004-.415.09-.563.24-.148.147-.227.343-.222.549.005.207.093.4.249.542l2.905 2.662c.168.154.388.239.618.239h.022.003c.237-.007.457-.101.618-.266l5.362-5.428c.148-.148.228-.344.223-.551s-.093-.399-.248-.542z">
                                    </path>
                                </g>
                            </svg>
                        </div>
                    </li>
                </#list>
                </ul>
            <#else>
                <div>
                    <div class="d-flex flex-column align-items-center mt-2 pt-5">
                        <span class="text-muted"><i class="fas fa-inbox fa-7x"></i></span>
                        <span class="text-muted mt-4 mb-5">
                            还没有分类，回<a class="font-weight-bold" href="${blog_url!}">主页</a>看看吧
                        </span>
                    </div>
                </div>
            </#if>
        </@categoryTag>
        <#--  categary-end  -->

        <#--  tag-start  -->
        <@tagTag method="list">
            <div class="coveo-facet-header">
                <div class="coveo-facet-header-title-section">
                    <div class="coveo-facet-header-title" role="heading" aria-level="2" aria-label="Product facet.">
                        标签
                    </div>
                </div>
            </div>
            <#if tags?? && tags?size gt 0>
                <ul class="coveo-facet-values">
                <#list tags as tag>
                    <#if blog_url?? && blog_url?string?contains(tag.slug?string)>
                    <li class="coveo-facet-value coveo-facet-selectable coveo-with-hover coveo-selected">
                    <#else>
                    <li class="coveo-facet-value coveo-facet-selectable coveo-with-hover">
                    </#if>
                        <label class="coveo-facet-value-label">
                            <div class="coveo-facet-value-label-wrapper"><a href="${tag.fullPath!}">
                                <input type="checkbox" aria-hidden="true" form="coveo-dummy-form">
                                <div class="coveo-facet-value-checkbox" tabindex="0" role="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 11" alt="Exclusion"
                                    class="coveo-facet-value-checkbox-svg">
                                        <g fill="none" class="coveo-more-svg">
                                            <path d="m10.083 4.583h-3.666v-3.666c0-.524-.393-.917-.917-.917s-.917.393-.917.917v3.667h-3.666c-.524-.001-.917.392-.917.916s.393.917.917.917h3.667v3.667c-.001.523.392.916.916.916s.917-.393.917-.917v-3.666h3.667c.523 0 .916-.393.916-.917-.001-.524-.394-.917-.917-.917z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-line-svg">
                                            <path d="m10 6.5h-9c-.552 0-1-.448-1-1 0-.552.448-1 1-1h9c .552 0 1 .448 1 1 0 .552-.448 1-1 1z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-exclusion-svg">
                                            <path d="m9.233 7.989-2.489-2.489 2.489-2.489c.356-.356.356-.889 0-1.244-.356-.356-.889-.356-1.244 0l-2.489 2.489-2.489-2.489c-.356-.356-.889-.356-1.244 0-.356.356-.356.889 0 1.244l2.489 2.489-2.489 2.489c-.356.356-.356.889 0 1.244.356.356.889.356 1.244 0l2.489-2.489 2.489 2.489c.356.356.889.356 1.244 0 .356-.355.356-.889 0-1.244z">
                                            </path>
                                        </g>
                                        <g fill="none" class="coveo-hook-svg">
                                            <path d="m10.252 2.213c-.155-.142-.354-.211-.573-.213-.215.005-.414.091-.561.24l-4.873 4.932-2.39-2.19c-.154-.144-.385-.214-.57-.214-.214.004-.415.09-.563.24-.148.147-.227.343-.222.549.005.207.093.4.249.542l2.905 2.662c.168.154.388.239.618.239h.022.003c.237-.007.457-.101.618-.266l5.362-5.428c.148-.148.228-.344.223-.551s-.093-.399-.248-.542z">
                                            </path>
                                        </g>
                                    </svg>
                                </div>
                                <span class="coveo-facet-value-count">
                                    
                                </span>
                                    <span class="coveo-facet-value-caption" title="${tag.name}" data-original-value="${tag.name}">
                                        ${tag.name}
                                    </span>
                                </a>
                            </div>
                        </label>
                        <div title="" class="coveo-facet-value-exclude"
                        tabindex="0" role="button">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 11 11" alt="Exclusion"
                            class="coveo-facet-value-exclude-svg">
                                <g fill="none" class="coveo-more-svg">
                                    <path d="m10.083 4.583h-3.666v-3.666c0-.524-.393-.917-.917-.917s-.917.393-.917.917v3.667h-3.666c-.524-.001-.917.392-.917.916s.393.917.917.917h3.667v3.667c-.001.523.392.916.916.916s.917-.393.917-.917v-3.666h3.667c.523 0 .916-.393.916-.917-.001-.524-.394-.917-.917-.917z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-line-svg">
                                    <path d="m10 6.5h-9c-.552 0-1-.448-1-1 0-.552.448-1 1-1h9c .552 0 1 .448 1 1 0 .552-.448 1-1 1z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-exclusion-svg">
                                    <path d="m9.233 7.989-2.489-2.489 2.489-2.489c.356-.356.356-.889 0-1.244-.356-.356-.889-.356-1.244 0l-2.489 2.489-2.489-2.489c-.356-.356-.889-.356-1.244 0-.356.356-.356.889 0 1.244l2.489 2.489-2.489 2.489c-.356.356-.356.889 0 1.244.356.356.889.356 1.244 0l2.489-2.489 2.489 2.489c.356.356.889.356 1.244 0 .356-.355.356-.889 0-1.244z">
                                    </path>
                                </g>
                                <g fill="none" class="coveo-hook-svg">
                                    <path d="m10.252 2.213c-.155-.142-.354-.211-.573-.213-.215.005-.414.091-.561.24l-4.873 4.932-2.39-2.19c-.154-.144-.385-.214-.57-.214-.214.004-.415.09-.563.24-.148.147-.227.343-.222.549.005.207.093.4.249.542l2.905 2.662c.168.154.388.239.618.239h.022.003c.237-.007.457-.101.618-.266l5.362-5.428c.148-.148.228-.344.223-.551s-.093-.399-.248-.542z">
                                    </path>
                                </g>
                            </svg>
                        </div>
                    </li>
                </#list>
            </ul>
            <#else>
                <div>
                    <div class="d-flex flex-column align-items-center mt-2 pt-5">
                        <span class="text-muted"><i class="fas fa-inbox fa-7x"></i></span>
                        <span class="text-muted mt-4 mb-5">
                            还没有标签，回<a class="font-weight-bold" href="${blog_url!}">主页</a>看看吧
                        </span>
                    </div>
                </div>
            </#if>
        </@tagTag>
        <#--  tag-end  -->
    </div>
    <div class="coveo-bottomSpace">
    </div>
</div>
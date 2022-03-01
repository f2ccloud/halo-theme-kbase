<#if settings.enable_footer!true>
<div class="footer">
    <footer>
        <#if settings.footer_source=='both' || settings.footer_source=='theme'>
            <div class="app-footer">
                <div class="footer-top container">
                    <div class="el-row" style="margin-left: -30px; margin-right: -30px;">
                        <div class="el-col el-col-10" style="padding-left: 30px; padding-right: 30px;">
                            <#if settings.footer_title?? && settings.footer_title?trim!=''>
                                <h2>
                                    ${settings.footer_title!}
                                </h2>
                            </#if>
                            <#if settings.title_content?? && settings.title_content?trim!=''>
                                <p>
                                    ${settings.title_content!}
                                </p>
                            </#if>
                            <p>
                            </p>
                        </div>
                        <div class="el-col el-col-7" style="padding-left: 30px; padding-right: 30px;">
                            <#if settings.contact_us?? && settings.contact_us?trim!=''>
                                <h2>
                                    联系我们
                                </h2>
                                <ul>
                                    ${settings.contact_us!}
                                </ul>
                            </#if>
                        </div>
                        <div class="el-col el-col-6" style="padding-left: 30px; padding-right: 30px;">
                            <#if settings.follow_us?? && settings.follow_us?trim!=''>
                                <h2>
                                    关注我们
                                </h2>
                                <img src="${settings.follow_us!}" width="150px" alt="">
                            </#if>
                        </div>
                    </div>
                </div>
                <#if settings.enable_icp && settings.icp?? && settings.icp?trim!=''>
                    <p>
                        ${settings.icp!}
                    </p>
                </#if>
                <#if settings.enable_copyright && settings.copyright?? && settings.copyright?trim!=''>
                    <p>
                        ${settings.copyright!}
                    </p>
                </#if>
                <p>
                    <#if settings.enable_tos && settings.tos?? && settings.tos?trim!=''>
                        <a href="${settings.tos!}"
                        class="text-foot title-p">
                            使用条款 |
                        </a>
                    </#if>
                    <#if settings.enable_privacy && settings.privacy_policy?? && settings.privacy_policy?trim!=''>
                        <a href="${settings.privacy_policy!}"
                        class="text-foot title-p">
                            隐私政策 |
                        </a>
                    </#if>
                    <#if settings.enable_licenses && settings.licenses?? && settings.licenses?trim!=''>
                        <a href="${settings.licenses!}"
                        class="text-foot title-p">
                            社区软件许可协议
                        </a>
                    </#if>
                </p>
            </div>

            <div id="footer">
                <footer class="main-footer">
                    <div _ngcontent="" class="personalization_div_1" style="min-height: 1px;">
                    </div>
                    <div _ngcontent="" class="personalization_div_2" style="min-height: 1px;">
                    </div>
                    <div _ngcontent="" class="gradient-hr vm-border">
                    </div>
                </footer>
            </div>
        </#if>
        <#if settings.footer_source=='both' || settings.footer_source=='backend'>
            <@global.footer />
        </#if>
    </footer>
    </div>
</#if>
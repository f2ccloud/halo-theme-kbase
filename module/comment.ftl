<#macro comment post,type>
    <div style="margin:15px auto;">
        <#if !post.disallowComment!false>
            <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
            <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
            <halo-comment id="${post.id?c}" type="${type}"/>
        </#if>
    </div>
</#macro>
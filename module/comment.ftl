<#macro comment post,type>
    <div class="container" style="margin:30px auto;border-top: 1px solid #fff0ff">
        <#if !post.disallowComment!false>
            <script src="https://unpkg.com/vue@2.6.14/dist/vue.min.js"></script>
            <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
            <halo-comment id="${post.id?c}" type="${type}"/>
        </#if>
    </div>
</#macro>
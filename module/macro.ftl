<#macro layout title>
    <!DOCTYPE html>
    <html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        <@global.head />

        <script type="text/javascript" charset="utf-8" src="${theme_base!}/source/js/jquery.min.js"></script>

        <link rel="stylesheet" href="${theme_base!}/dist/style.css"/>
        <link rel="icon" href="${settings.favicon!}"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.11.1/tocbot.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.11.1/tocbot.min.js"></script>
        <title>${title}</title>

        <#if is_post?? || is_sheet??>
            <link href="${theme_base!}/source/libs/highlight.js/styles/${settings.highlight_style!'default.min.css'}"
                  rel="stylesheet">
            <script src="${theme_base!}/source/libs/highlight.js/highlight.min.js"></script>
            <link href="${theme_base!}/source/libs/lightgallery.js/css/lightgallery.min.css" rel="stylesheet">
            <script src="${theme_base!}/source/libs/lightgallery.js/js/lightgallery.min.js"></script>

            <script>
                (async function () {
                    const extraLanguages = "${settings.highlight_extra_languages!''}".split(",").filter(x => x);

                    for (let i = 0; i < extraLanguages.length; i++) {
                        const lang = extraLanguages[i];
                        if (lang) {
                            await loadScript("${theme_base!}/source/libs/highlight.js/languages/" + lang + ".min.js");
                        }
                    }

                    console.log("Extra languages: ", extraLanguages);

                    document.querySelectorAll('pre code').forEach((el) => {
                        hljs.highlightElement(el);
                    });
                    console.log("Loaded languages: ", hljs.listLanguages())
                })()

                function loadScript(url) {
                    return new Promise(function (resolve, reject) {
                        const script = document.createElement('script');
                        script.type = "text/javascript";
                        script.src = url;
                        script.onload = resolve;
                        script.onerror = reject;
                        document.head.appendChild(script);
                    });
                }

            </script>

            <style>
                .markdown-body pre {
                    padding: 0 !important;
                }

                .markdown-body pre code {
                    border: 1px solid #fbf6f6;
                }
            </style>
        </#if>
    </head>
    <body class="null comm-page-home">
    <div id="page-container" class="cKM_PortalTheme">
        <#include "config.ftl">
        <#include "menu.ftl">

        <#nested >
    </div>
    <#include "footer.ftl">
    <script type="text/javascript" charset="utf-8" src="${theme_base!}/source/js/fit2cloud.js"></script>
    <#include "back-top.ftl">

    <#if is_post?? || is_sheet??>
        <script type="text/javascript">
            const imageNodes = document.querySelectorAll('#article-content img');
            imageNodes.forEach(function (node) {
                if (node) {
                    node.dataset.src = node.src;
                }
            })

            lightGallery(document.getElementById('article-content'), {
                selector: 'img',
            })
        </script>
    </#if>
    </body>
    </html>
</#macro>


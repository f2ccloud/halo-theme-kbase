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
        <title>${title}</title>
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
    </body>
    </html>
</#macro>


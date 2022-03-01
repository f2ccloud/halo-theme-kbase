<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  

        <@global.head />

        <script type="text/javascript" charset="utf-8" src="${theme_base!}/source/js/jquery.min.js"></script>
        
        <link rel="stylesheet" href="${theme_base!}/source/css/fit2cloud.min.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/fit-header.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/fit-footer.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/fit-articles.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/styles.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/fit-search.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/app.css"/>  
        <link rel="stylesheet" href="${theme_base!}/source/css/article-detail.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/fit2cloud-style.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/github-markdown.min.css"/>
        <link rel="icon" href="${settings.favicon!}"/>   
        <title>${title}</title>
    </head>
    <body class="null comm-page-home">
        <div id="page-container" class="cKM_PortalTheme">
            <#include "config.ftl">
            <#include "menu.ftl">

            <#nested >

            <#--
                公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
                包含：统计代码，底部信息
            -->

        </div>
        <#include "footer.ftl">
        <script type="text/javascript" charset="utf-8" src="${theme_base!}/source/js/fit2cloud.js"></script>
    </body>
</html>
</#macro>


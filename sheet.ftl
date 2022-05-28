<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <h1>${sheet.title!}</h1>
    <article id="article-content">
        ${sheet.formatContent!}
    </article>
    <#include "module/comment.ftl">
    <@comment post=sheet type="sheet" />
</@layout>

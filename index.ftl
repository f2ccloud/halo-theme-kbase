<#if settings.index_source=='index' || settings.index_source?trim==''>
	<#include "module/macro.ftl">
	<@layout title="${blog_title!}">
		<#include "module/home-search.ftl">
		<#include "module/latest-articles.ftl">
	</@layout> 
<#else>
	<#include "./${settings.index_source!}.ftl">
</#if>   



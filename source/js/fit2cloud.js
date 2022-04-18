function formSubmit() {
    var keyword = $("#keyword").val();
    let keysArr = JSON.parse(sessionStorage.getItem('keys')) == null ? [] : JSON.parse(sessionStorage.getItem('keys'));
    if (keyword && keysArr.length < 3 && keysArr.indexOf(keyword) === -1) {
        keysArr.push(keyword)
    }
    if (keyword && keysArr.length === 3 && keysArr.indexOf(keyword) === -1) {
        keysArr.shift()
        keysArr.push(keyword)
    }
    if (keysArr) {
        sessionStorage.setItem('keys', JSON.stringify(keysArr));
    }

    sessionStorage.setItem("keyword", keyword);
    document.getElementById("myForm").submit()
}

function initKeyword() {
    var keyword = sessionStorage.getItem("keyword");
    let keysArr = JSON.parse(sessionStorage.getItem('keys'));
    // if (keyword) {
    //     $("#keyword").val(keyword);
    // }
    var html = '<div class="caption-for-queries-history">最近搜索:</div><ul class="queries-history-list flex" >';
    var str = "";
    if (keysArr && keysArr.length > 0) {
        for (let key in keysArr) {
            str += '<li role="presentation" class="flex align-item-center">' +
                '<a href="/search?keyword=' + keysArr[key] + '">' +
                '<div class="queries-history-item-caption">' +
                '<span class="svg-wrapper">' +
                '<lightning-icon class="slds-icon-utility-search slds-icon_container">' +
                '<lightning-primitive-icon>' +
                '<svg focusable="false" data-key="search" aria-hidden="true" viewBox="0 0 52 52" class="slds-icon slds-icon-text-default">' +
                '<g>' +
                '<path d="M49.62 45.27L36.22 32a18.9 18.9 0 10-34.1-9.2A18.91 18.91 0 0032 36.27l13.3 13.3a1.45 1.45 0 002.1 0l2.1-2.1a1.68 1.68 0 00.12-2.2zm-28.7-11.5a12.9 12.9 0 1112.9-12.9 12.87 12.87 0 01-12.9 12.9z" fill-rule="evenodd"></path>' +
                '</g>' +
                '</svg>' +
                '</lightning-primitive-icon>' +
                '</lightning-icon>' +
                '</span>' +
                keysArr[key] +
                '</div>' +
                '</a>' +
                '</li>'

        }
        $("#coveo-queries-history").html(html + str + "</ul>");
    }
}
initKeyword();

function scrolldown() {
    const $el = $("#backtop");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        $el.css('display', 'block')
    } else {
        $el.css('display', 'none')
    }
}
window.onscroll = function() { scrolldown() };

function back2Top() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

function postToc() {
    /**
     * 初始化目录
     */
    var headerEl = 'h1,h2,h3,h4,h5,h6';
    tocbot.init({
        tocSelector: '#toc',
        contentSelector: '.markdown-body',
        headingSelector: headerEl
    });
}

postToc();

$(window).scroll(function() {
    //获取滚动条的高度
    var scrollTop = $(this).scrollTop();
    //获取一个屏幕的高度
    var windowHeight = document.body.clientHeight;
    //当滚动条滚动到一边的最底部，把需要的div滚动到底部就固定div不让移动了
    if (scrollTop > $('#rightdiv').height() - windowHeight && scrollTop < ($('#contentMain').height() - 250)) {
        $("#rightdiv").css("position", "fixed"); //固定div让其不随着滚动条的滚动而滚动
        if (scrollTop > 420) {
            $("#rightdiv").css("top", "1px");
        }
        if (scrollTop == 420) {
            $("#rightdiv").css("top", "420px");
        }
        if (scrollTop < 420) {
            $("#rightdiv").css("top", 430 - scrollTop + "px");
        }
        $("#rightdiv").css("bottom", "10px");
    } else {
        $("#rightdiv").css("position", "static"); //恢复div可以跟随滚动条滚动
    }
});
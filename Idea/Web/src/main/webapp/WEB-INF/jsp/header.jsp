<%@ page pageEncoding="UTF-8" language="java" %>
<c:url var="base" value="/" />
<base href="${base}">
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
    /* ------------上导航---------- */
    #header{
        z-index: 999;
        position: fixed;
        top:0;
        background: #1772b4;
        display: flex;
        width: 100%;
        height: 83px;
        box-shadow: 1px 1px 3px black;
    }
    #header div.logo{
        content: "";
        background-image: url("resource/img/logodouble.png");
        background-repeat: no-repeat;
        display: flex;
        flex-basis:443px;
        flex-shrink: 0;
    }
    #header div.logo img{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    #header div.nav{
        flex-grow: 1;
        flex-shrink: 0;
        height: 100%;
    }
    #header div.nav ul{
        display: flex;
        height: 100%;
        width: 100%;
    }
    #header div.nav ul li {
        width: 160px;
        display: flex;
        flex-direction: column;
        align-items: center;
        flex-shrink: 0;
        height: 100%;
    }
    #header div.nav ul li.right {
        margin-left: auto;
    }
    #header div.nav ul li div.celling,a.celling{
        font-size:20px;
        height: 100%;
        width: 100%;
        padding: 25px 10px;
        color:white;
        text-align: center;
        display: block;
        transition: color 0.5s, background-color 0.5s, transform 0.5s;
    }
    #header div.nav ul li div.celling:hover,a.celling:hover{
        box-shadow: 1px 1px 1px grey;
        color: white;
        background: #144a74;
    }
    .dropdown-content {
        top:83px;
        position: absolute;

        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        background-color: #f9f9f9;
        border-radius:0 0 10px 10px;
        z-index: 1;
        overflow: hidden;
        height: 0;
        transition: height 0.5s;
    }
    .dropdown-content a {

        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
        transition: 0.3s;
    }
    .dropdown-content a:hover {
        border-radius: 4px;
        box-shadow: 0 1px 1px grey;
        transform: scale(1.1);
        background:#2775b6;
        color:white;
    }
<c:set var="Labs" value="${labs}" />
</style>
<div id="header">
    <div class="logo"></div>
    <div class="nav">
        <ul>
            <li>
                <a class="celling" href="home">首页</a>
            </li>
            <li>
                <div class="celling">专业介绍</div>
                <div class="dropdown-content">
                    <a href="introductionSelf?id=1">专业介绍</a>
                    <a href="introductionSelf?id=2">方向简介</a>
                </div>
            </li>
            <li>
                <div class="celling">实验室</div>
                <div class="dropdown-content">
                    <c:forEach items="${sessionScope.labs}" var="l">
                        <a href="introductionLab?lid=${l.lid}">${l.lname}</a>
                    </c:forEach>
                </div>
            </li>
            <li>
                <div class="celling">教师队伍</div>
                <div class="dropdown-content">
                    <a href="introductionTeacher?tid=0&type=professors">教授</a>
                    <a href="introductionTeacher?tid=0&type=associateProfessors">副教授</a>
                    <a href="introductionTeacher?tid=0&type=teachers">讲师</a>
                </div>
            </li>
            <li>
                <div class="celling">就业指南</div>
                <div class="dropdown-content">
                    <a href="introductionEmploy?identity=1">就业方向</a>
                    <a href="introductionEmploy?identity=2">就业建议</a>
                </div>
            </li>
            <li class="right">
                <a class="celling" href="login">后台系统</a>
            </li>
        </ul>
    </div>
</div>
<script>
    $(document).ready(function() {
        var isHovered = false;
        // 鼠标移入菜单项
        $('div.celling').hover(function() {
            var $dropdown = $(this).next('.dropdown-content');
            var realHeight = $dropdown.prop('scrollHeight');
            $dropdown.css('height', realHeight + 'px');
            isHovered = true;
        }, function() {
            isHovered = false;
            setTimeout(function() {
                if (!isHovered) {
                    $('.dropdown-content').css('height', '0');
                }
            }, 200); // 延迟执行以允许鼠标快速穿过
        });
        // 鼠标移入下拉菜单
        $('.dropdown-content').hover(function() {
            isHovered = true;
        }, function() {
            isHovered = false;
            $(this).css('height', '0');
        });
        // 鼠标移出导航栏区域
        $('#header').mouseleave(function() {
            $('.dropdown-content').css('height', '0');
        });
    });

</script>
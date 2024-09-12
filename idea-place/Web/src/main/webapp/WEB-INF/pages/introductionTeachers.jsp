<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>教师队伍</title>
    <style>
        *{
            padding: 0;
            margin:0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }
        body{
            background: #FFFFFF;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
            width: 100%;
            height: 100%;
        }
        #main{
            background:linear-gradient(to top, rgb(219, 234, 254), rgb(147, 197, 253), rgb(59, 130, 246));
            margin:83px 0 0 0;
            display: flex;
            flex-wrap: nowrap;
            flex-direction: row;
            width:100%;
            min-width: 1440px;
            min-height: 90vh;
        }

        #main .aside-left,
        .aside-right {
            width:12%;
            flex-shrink: 0;
            content:"";
        }
        #main .aside-left ul{
            display: flex;
            flex-direction: column;
            flex-wrap: nowrap;
        }
        #main .aside-left ul li{

            height: 40px;
            margin: 5px;
            flex-shrink: 0;
        }
        #main .aside-left ul li a{
            border-radius: 4px;
            padding:6px;
            text-align: center;
            font-size:20px;
            display: block;
            height: 100%;
            width: 100%;
            text-decoration: none;
            background: #1556a8;
            color:white;
            box-shadow: 1px 1px 1px #3f3f3f;
            text-shadow: 1px 1px 1px black;
            transition: all 0.3s;
        }
        #main .aside-left ul li a:hover {
           transform:scale(1.1);

        }
        #main #content{
            padding:10px;
            display: flex;
            width:76%;
            flex-shrink:0;
        }
        #main #content .teachers{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        #main #content .singleTeacher{
            margin:10px;
            height: 287px;
            width: 192px;
        }
        #main #content .singleTeacher img{
            width: 192px;
            height: 257px;
            object-fit: fill;
            box-shadow: 1px 1px 2px grey;
        }
    </style>
</head>
<body>

<div class="container">
    <!-- header -->
    <%@include file="../jsp/header.jsp"%>

    <!-- main -->
    <div id="main">
        <div class="aside-left">
            <ul>
                <c:forEach items="${teachers}" var="t">
                    <li><a href="introductionTeacher?tid=${t.tid}&type=${type}">${t.tname}</a></li>
                </c:forEach>
            </ul>
        </div>
        <div id="content">

            <c:if test="${tid!=0}">
                <div class="singleTeacher">
                    <img src="${teacher.timg}">
                </div>
            <div class="tintroduction">${teacher.tname} <br> ${teacher.tintroduction}</div>
            </c:if>

            <c:if test="${tid==0}">
                <div class="teachers">

                <c:forEach items="${teachers}" var="t">
                        <div class="singleTeacher">
                            <a href="introductionTeacher?tid=${t.tid}&type=${type}"><img src="${t.timg}"></a>
                            <div style="text-align: center">${t.tname}</div>
                        </div>
                </c:forEach>

                </div>
            </c:if>

        </div>
        <div class="aside-right"></div>
    </div>

    <!-- footer -->
    <%@include file="../jsp/footer.jsp"%>

</div>

</body>
</html>

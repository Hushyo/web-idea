<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/3
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>实验室</title>
    <style>
        *{
            padding: 0;
            margin:0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }
        body{

        }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
            width: 100%;
        }
        #main{
           background: linear-gradient(to top, rgb(219, 234, 254), rgb(147, 197, 253), rgb(59, 130, 246));
            margin:83px 0 0 0;
            display: flex;
            flex-wrap: nowrap;
            flex-direction: row;
            width:100%;
            min-width: 1440px;
            min-height: 90vh;
            position: relative;
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
            margin: 5px 0;
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
            display: flex;
            width:76%;
            flex-shrink:0;
            flex-direction: column;
            align-items: center;
        }
        #main #content div.img{
            margin: 20px;
            width: 800px;
            height: 450px;

        }
        #main #content div.img img{
            width: 100%;
            height: 100%;
            object-fit: fill;
            border-radius: 10px;

            box-shadow: 2px 2px 5px grey;
        }
        #main #content div.introduction{
            width: 80%;
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
                <c:forEach items="${labs}" var="l">
                    <li><a href="introductionLab?lid=${l.lid}">${l.lname}</a></li>
                </c:forEach>
            </ul>
        </div>

        <div id="content">
                <div class="img">
                    <img src="${lab.limg}">
                </div>
                <div class="introduction">${lab.lname} <br> ${lab.lintroduction}</div>
        </div>

        <div class="aside-right"></div>

    </div>
    <!-- footer -->
    <%@include file="../jsp/footer.jsp"%>
</div>

</body>
</html>

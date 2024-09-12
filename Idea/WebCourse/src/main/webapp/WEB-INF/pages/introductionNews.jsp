<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/5
  Time: 20:51
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
    <title>新闻公告</title>
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
        }
        #main{
            border:1px solid #3f3f3f;
            background: #FFFFFF;
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
            width:20%;
            flex-shrink: 0;
            background-color: #FFFFFF;
            content:"";
        }
        #main #content{
            box-shadow: 1px 0px 5px lightslategrey;
            z-index: 1;
            display: flex;
            width:60%;
            flex-shrink:0;
            flex-direction: column;
            align-items: center;
        }
        #main #content div.title{
            background: #EEEEEE;
            font-size:24px;
            padding:40px 0 0 40px;
            width: 100%;
            flex-shrink:0;
        }
        #main #content div.time{
            background:#EEEEEE;
            color:#999999;
            padding:20px 0 40px 40px;
            width: 100%;
            flex-shrink:0;
        }
        #main #content div.article{
            padding:20px;
            width: 100%;
            flex-shrink:0;
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
    </style>
</head>
<body>
<div class="container">
    <!-- header -->
    <%@include file="../jsp/header.jsp"%>
    <!-- main -->
    <div id="main">
        <div class="aside-left"> </div>

            <div id="content">
                <div class="title">
                    ${announce.title}
                </div>
                <div class="time">
                    ${announce.publishTime}  ID:${announce.id}
                </div>
                <div class="article">
                    &emsp;&emsp;${announce.content}
                </div>

            </div>

        <div class="aside-right"></div>
    </div>
    <!-- footer -->
    <%@include file="../jsp/footer.jsp"%>
</div>
</body>
</html>

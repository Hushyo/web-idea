<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/13
  Time: 17:11
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
    <title>Title</title>
    <style>
        body {
            font-family: Arial, "微软雅黑", sans-serif;
            line-height: 1.6;
            background-color: #f0f0f0;
        }
        a.button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        a.button:hover {
            background-color: #0056b3;
        }
        table {
            text-decoration: none;
            width: 100%;
            height: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            width: 150px;
            padding: 12px;
            text-align:center;
            border-bottom: 1px solid #ddd;
            white-space: nowrap;
            max-width: 300px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        td.publishtime div{
           flex-basis: 200px;
        }
        td.publishtime a.button{
            display: block;
            margin-left: auto;
        }
        td a{
            text-decoration: none;
            color:black
        }
        *{
            padding: 0;
            margin:0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }
        body{
            background: #ddd;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
            width: 100%;
        }
        #main{
            border:1px solid #3f3f3f;
            background: #e2e1e4;
            margin:83px 0 0 0;
            display: flex;
            flex-wrap: nowrap;
            flex-direction: row;
            width:100%;
            min-width: 1440px;
            min-height: 90vh;
        }
        #main .aside-left{
            width:20%;
            flex-shrink: 0;
            display: flex;
            flex-direction: column;
            position: relative;
            justify-content: space-evenly;
        }
        #main .aside-left::before {
            position: absolute;
            background: #1c6ca8;
            margin-left: 10%;
            z-index: 0;
            top: 0;
            left: 0;
            content: "";
            width: 80%;
            height: 0;  /* 初始高度为 0 */
            transition: height 0.5s ease;  /* 高度变化的平滑过渡效果 */
        }
        #main .aside-left.active::before {
            height: 100%;  /* 扩展到侧边栏的完整高度 */
        }

        #main .aside-left div.form{
            z-index: 1;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #main .aside-left div.form a.button{
            background: #2e51cc;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width:90%;
            height: 80px;
            border-radius: 10px;
            transition: 0.3s;
        }
        #main .aside-left div.form a.button:hover{
            transform:scale(1.1);
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="../jsp/header.jsp"%>

<div id="main">
    <div class="aside-left">
        <div class="form">
            <a class="button" href="backstage?type=news">新闻</a>
        </div>
        <div class="form">
            <a href="backstage?type=notices" class="button">公告</a>
        </div>
        <div class="form">
            <a class="button" href="newsAndNotice">添加</a>
        </div>
    </div>
<table>
    <tr>
        <th>新闻标题</th>
        <th>新闻内容</th>
        <th>发布时间</th>
        <th>操作</th>
    </tr>
    <!-- 这里可以动态添加新闻数据行 -->
    <c:if test="${type=='news'}">
    <c:forEach items="${news}" var="n">
        <tr>
            <td><a href="announciation?type=news&nid=${n.id}">${n.title}</a></td>
            <td>${n.content}</td>
            <td>${n.publishTime}</td>
            <td>
                <a class="button" href="delete?did=${n.id}&table=news">删除</a>
                <a class="button" href="update?id=${n.id}&table=news">更新</a>
            </td>
        </tr>
    </c:forEach>
    </c:if>
    <c:if test="${type=='notices'}">
    <c:forEach items="${notices}" var="n">
        <tr>
            <td><a href="announciation?type=notices&nid=${n.id}">${n.title}</a></td>
            <td>${n.content}</td>
            <td>${n.publishTime}</td>
            <td>
                <a class="button" href="delete?did=${n.id}&table=notices">删除</a>
                <a class="button" href="update?id=${n.id}&table=notices">更新</a>
            </td>
        </tr>
    </c:forEach>
    </c:if>
</table>
</div>
</div>
</body>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 在页面加载后稍作延迟后切换 active 类，以触发动画效果
        setTimeout(function() {
            document.querySelector(".aside-left").classList.toggle("active");
        }, 100);
    });
</script>
</html>

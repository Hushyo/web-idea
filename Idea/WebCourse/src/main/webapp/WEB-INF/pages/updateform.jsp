<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/13
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>新增新闻表单</title>
    <style>
        *{
            padding:0;
            margin:0;
            box-sizing: border-box;
        }
        body {
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }
        form {
            background-color: white;
            padding: 2rem;
            border-radius: 5px;
            box-shadow: 0 0 2px gray;
            width: 100%;
            max-width: 800px;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        textarea {
            resize: vertical;
            height: 200px;
        }
        button {
            font-size:20px;
            border: none;
            width: 100%;
            padding: 16px;
            background-color: #1986fd;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0154af;
        }
    </style>
</head>
<body>
<a href="backstage?type=${table}">返回</a>
<form action="update" method="post">
    <input type="text" hidden name="uid" value="${id}">
    <input type="text" hidden name="table" value="${table}">
    新闻标题:
    <input type="text" id="title" name="title">
    新闻内容:
    <textarea id="content" name="content"></textarea>
    <button type="submit">提交</button>
</form>
</body>
</html>

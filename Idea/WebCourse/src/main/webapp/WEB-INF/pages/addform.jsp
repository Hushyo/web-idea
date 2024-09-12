<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%@ page pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            width: 600px;
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

<a href="backstage?type=news">返回</a>

<form action="newsAndNotice" method="post" id="newAndNoticeForm">

    <label><input type="radio" name="table" value="news" checked>新闻</label>
    <label><input type="radio" name="table" value="notices"> 公告</label><br>

    标题: <input type="text" name="title" > <br>
    内容: <textarea type="text" name="content"> </textarea><br>
    <button type="submit">提交</button>
</form>
</body>
</html>

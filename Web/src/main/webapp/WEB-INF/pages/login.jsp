<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/1
  Time: 22:54
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
    <title>login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(200deg, #f3e7e9, #e3eeff);
        }
        .container {
            background-color: #e7b9ee;
            width: 650px;
            height: 415px;
            border-radius: 5px;
            box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .form-box {
            position: absolute;
            top: -10%;
            left: 5%;
            background-color: #efa1c0;
            width: 320px;
            height: 500px;
            border-radius: 5px;
            box-shadow: 2px 0 10px darkgrey;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 2;
            transition: 0.5s ease-in-out;
        }
        .form-box form{
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        .form-box form span{
            display: inline-block;
            padding:8px;
            width: 60px;
            margin-right: 10px;
            text-align: center;
            background: #f6f6f6;
            border-radius: 5px;
        }
        h1 {
            text-align: center;
            margin-bottom: 25px;
            text-transform: uppercase;
            color: #fff;
            letter-spacing: 5px;
        }
        input {
            background-color: transparent;
            width: 40%;
            color: #fff;
            border: none;
            border-bottom: 1px solid rgba(255, 255, 255, 0.4);
            padding: 10px 0;
            text-indent: 10px;
            margin: 8px 0;
            font-size: 14px;
            letter-spacing: 2px;
        }
        input::placeholder {
            color: #fff;
        }
        input:focus {
            color: #a262ad;
            outline: none;
            border-bottom: 1px solid #a262ad80;
            transition: 0.5s;
        }
        input:focus::placeholder {
            opacity: 0;
        }
        .form-box button {
            width: 40%;
            margin-top: 35px;
            background-color: #f6f6f6;
            outline: none;
            border-radius: 8px;
            padding: 13px;
            color: #a262ad;
            letter-spacing: 2px;
            border: none;
            cursor: pointer;
        }

        .form-box button:hover {
            background-color: #a262ad;
            color: #f6f6f6;
            transition: background-color 0.5s ease;
        }
        .form-box a{
            font-size: 14px;
            text-decoration: none;
            text-align: center;
            width: 30%;
            margin-top: 35px;
            background-color: #f6f6f6;
            outline: none;
            border-radius: 8px;
            padding: 13px;
            color: #a262ad;
            letter-spacing: 2px;
            border: none;
            cursor: pointer;
        }
        .form-box a:hover {
            background-color: #a262ad;
            color: #f6f6f6;
            transition: background-color 0.5s ease;
        }
        .right{
            position: relative;
            left:360px;
            width: 290px;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-box">
            <div style="width: 100%;">
            <h1>登录</h1>
            <form action="login" method="post">
                <div><span>用户名</span> <input type="text" name="username"></div>
                <div><span>密码</span><input type="password" name="password"></div>
                <button type="submit">登录</button>
                <a href="home">返回首页</a>
            </form>

            </div>
    </div>
    <div class="right">
    </div>
</div>
</body>
</html>

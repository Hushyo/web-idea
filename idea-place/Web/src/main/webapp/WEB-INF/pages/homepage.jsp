<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/" />
    <base href="${base}">
    <meta charset="UTF-8">
    <title>首页</title>
    <style>
        *{
            padding: 0;
            margin:0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
            font-family: 'Poppins', sans-serif;
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
    </style>
</head>
<body>

<div>
    <!-- 幻灯片 -->
    <%@include file="../jsp/imgs.jsp"%>
</div>
<div class="container">
    <!-- header -->
    <%@include file="../jsp/header.jsp"%>
    <!-- main -->
    <%@include file="../jsp/main.jsp"%>
    <!-- footer -->
    <%@include file="../jsp/footer.jsp"%>
</div>
</body>

</html>

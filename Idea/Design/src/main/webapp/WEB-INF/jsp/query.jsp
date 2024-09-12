<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/6/28
  Time: 15:52
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
    <title>Query</title>
</head>
<body>
用户id:${user.id}<br>
用户名:${user.name}<br>
注册时间:${user.insertTime}
</body>
</html>

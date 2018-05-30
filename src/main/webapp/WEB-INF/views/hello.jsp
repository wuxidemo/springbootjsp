<%--
  Created by IntelliJ IDEA.
  User: wuyifeng
  Date: 2018/5/26
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎页面spring boot + mybatis + jsp</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <!--%
        response.sendRedirect("index.html");
    %-->
</head>
<body>
<div class="container">
    <p class="bg-danger">Spring Boot Jsp </p>
</div>
<jsp:forward page="/index.html"></jsp:forward>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>includeHello.jsp</title>
    <style type="text/css">
        body{
            font-size: 18px;
            color: blue;
        }
    </style>
</head>
<body>
    <%@include file="hello.txt"%>
</body>
</html>
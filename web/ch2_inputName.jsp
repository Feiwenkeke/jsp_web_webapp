<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 9:27
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
    <title>inputName.jsp</title>
    <style type="text/css">
        body{
            background-color: cyan;
            font-size: 18px;
        }
    </style>
</head>
<body>
<form action="ch2_People_NoShow.jsp" method="get" name="form">
    请输入你的名字：
    <input type="text" name="name">
    </br>
    <input type="submit" value="提交" name="submit">
</form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/5/23
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch6.1_intput</title>
</head>
<body>
<form action="handleData" method="post">
    <br>
    请输入一元二次方程的系数
    <br>
    二次项系数a:<input type="text" name="a" size="4">
    一次项系数b:<input type="text" name="b" size="4">
    常数项c:<input type="text" name="c" size="4">
    <input type="submit" value="提交">
</form>
</body>
</html>

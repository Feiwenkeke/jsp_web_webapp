<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch3_input计算器</title>
    <style type="text/css">
        body {
            background: yellow;
        }
    </style>
</head>
<body>
<form action="ch3_result_NoShow.jsp" method="post" name="form">
    请输入运算数、选择运算符号：
    <br>
    <input type="text" name="numberOne" size="6">
    <select name="operator">
        <Option value="+">加</Option>
        <Option value="-">减</Option>
        <Option value="*">乘</Option>
        <Option value="/">除</Option>
    </select>

    <input type="text" name="numberTwo" size="6">
    <br>
    <input type="submit" value="提交" name="submit">
</form>
</body>
</html>

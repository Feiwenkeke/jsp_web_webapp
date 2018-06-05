<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/6/6
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch6.2_inputData</title>
</head>

<body bgcolor=cyan>
<font size=2>
    <jsp:useBean id="data" class="pojo.Area" scope="session"/>
    <form action="handleArea" method="post">
        梯形：
        <br>
        输入上底：<input type="text" name="top" size=4>
        输入下底：<input type="text" name="bottom" size=4>
        输入高：<input type="text" name="height" size=4> <input type="submit" name="submit" value="提交">
    </form>
    上底
    <jsp:getProperty property="top" name="data"/>
    下底
    <jsp:getProperty property="bottom" name="data"/>
    高
    <jsp:getProperty property="height" name="data"/>
    的
    <jsp:getProperty property="mess" name="data"/>
    的面积是
    <jsp:getProperty property="area" name="data"/>
</font>
</body>
</html>

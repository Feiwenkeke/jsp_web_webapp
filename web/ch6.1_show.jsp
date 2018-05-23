<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/5/23
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="equation" type="pojo.Equation" scope="request"/>
<html>
<head>
    <title>ch6.1_show</title>
</head>
<body>
    一元二次方程的系数是：
    <br>
    二次项系数：<jsp:getProperty name="equation" property="a"/>
    一次项系数：<jsp:getProperty name="equation" property="b"/>
    常数项：<jsp:getProperty name="equation" property="c"/>
    <br>
    是一元二次方程吗？<jsp:getProperty name="equation" property="squareEquation"/>
    <br>
    方程的两个根是:<jsp:getProperty name="equation" property="rootOne"/>
    <jsp:getProperty name="equation" property="rootTwo"/>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/5/9
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%@ page import="pojo.Car" %>
<jsp:useBean id="car" class="pojo.Car" scope="session"/>

<html>
<head>
    <title>ch4_show.jsp</title>
</head>
<body bgcolor="yellow">
    <table border="1">
        <tr>
            <th>汽车牌号</th>
            <th>汽车名称</th>
            <th>汽车生产日期</th>
        </tr>
        <tr>
            <td><jsp:getProperty name="car" property="number"/></td>
            <td><jsp:getProperty name="car" property="name"/></td>
            <td><jsp:getProperty name="car" property="madeTime"/></td>
        </tr>
    </table>
</body>
</html>

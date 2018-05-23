<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/5/23
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch5_2 showName</title>
</head>
<body bgcolor="#ffc0cb">
    <%
        String name = request.getParameter("name");

    %>

    <br>
    <br>
    用户输入的是<%= name%>

</body>
</html>

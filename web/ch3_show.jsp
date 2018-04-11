<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch3_show</title>
    <style type="text/css">
        .header {

        }

        .content {
            background: cyan;
        }
    </style>
</head>
<body>
<%
    String name = (String) session.getAttribute("login_name");
    if (name == null || name.length() == 0) {
        response.sendRedirect("ch3_login.jsp");
    }
%>
<div class="header">
    <a href="ch3_login.jsp">登录</a>
    <a href="ch3_show.jsp">看图</a>
    <a href="ch3_exit.jsp">退出</a>
</div>

<div class="content">
    <img src="./img/OK.png" alt="IMG:OK">
</div>

</body>
</html>

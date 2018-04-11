<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch3_exit</title>
    <style type="text/css">
        .header {

        }

        .content {
            background: yellow;
        }
    </style>
</head>
<body>
<div class="header">
    <a href="ch3_login.jsp">登录</a>
    <a href="ch3_show.jsp">看图</a>
    <a href="ch3_exit.jsp">退出</a>
</div>
<%
    session.invalidate();
%>
<div class="content">
    <b>session 会话失效</b>
</div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch3_login</title>
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

<div class="content">
    <form action="" method="post" name="form">
        请输入账户：
        <br>
        <input type="text" name="name" size="6">
        <br>
        <input type="submit" value="提交" name="submit">
    </form>
</div>


</body>
</html>
<%
    String name = (String) session.getAttribute("login_name");
    if (name == null || name.length() == 0) {
        name = request.getParameter("name");
        if (name == null) {
            name = "";
        }

        session.setAttribute("login_name", name);
    }

%>
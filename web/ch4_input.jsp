<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/5/9
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="car" class="pojo.Car" scope="session"></jsp:useBean>
<html>
<head>
    <title>ch4_input</title>
</head>
<body bgcolor="yellow">
    <div class="main">
        <form action="" method="post">
            汽车牌号：<input type="text" name="number">
            <br>
            汽车名称：<input type="text" name="name">
            <br>
            汽车生产日期： <input type="text" name="madeTime">

            <input type="submit" value="提交">
        </form>
    </div>
<jsp:setProperty name="car" property="*"></jsp:setProperty>
    <a href="ch4_show.jsp">访问 ch4_show.jsp 查看</a>
</body>
</html>

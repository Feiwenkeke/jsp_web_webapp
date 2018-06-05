<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.txt"/>
    <style type="text/css">
        body {
            bgcolor: yellow;
        }
    </style>
</head>
<body>
<form action="" method="get" name="form">
    请输入1~100之间的整数:
    <input type="text" name="number">
    <br>
    <input type="submit" value="提交" name="submit">
</form>
<%
    String num = request.getParameter("number");
    if (num == null) {
        num = "0";
    }
    try {
        int n = Integer.parseInt(num);
        if (n >= 1 && n <= 50) {
%>
<jsp:forward page="ch2_Two_NoShow.jsp">
    <jsp:param name="number" value="<%= n %>"></jsp:param>
</jsp:forward>
<%
} else if (n > 50 && n <= 100) {

%>
<jsp:forward page="ch2_Three_NoShow.jsp">
    <jsp:param name="number" value="<%= n %>"></jsp:param>
</jsp:forward>
<% } else if (n > 100) {
%>
<jsp:forward page="ch2_error.jsp">
    <jsp:param name="mess" value="<%= n %>"></jsp:param>
</jsp:forward>
<% }
} catch (Exception e) {
%>
<jsp:forward page="ch2_error.jsp">
    <jsp:param name="mess" value="<%= e.toString()  %>"></jsp:param>
</jsp:forward>
<% }
%>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/8
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>example1_1</title>
</head>
<body style="background-color: cyan">
<h3>这是一个简单的jsp页面</h3>
<%
    int sum = 0;
    for (int i = 1; i <= 100; i++) {
        sum += i;
    }
%>
<h5>1到100的连续和是：<%=sum%>
</h5>
</body>
</html>

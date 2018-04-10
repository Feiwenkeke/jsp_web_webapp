<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/8
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>shiyan</title>
</head>
<body style="background-color: green">
<br>
英语字母表：
<br>
<%
    char c ='A';
    for (;c<'Z';c++){
        out.print(" "+c);
        if(c=='M'){
            out.print("<br>");
        }
    }
%>
</body>
</html>

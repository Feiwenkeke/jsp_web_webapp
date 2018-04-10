<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>three.jsp</title>
    <jsp:include page="head.txt"></jsp:include>
    <style type="text/css">
        body{
            background-color: yellow;
        }
        .font-set-flag{
            font-size: 18px;
            color: red;
        }
    </style>
</head>
<body>
<p class="font-set-flag">This is three.jsp</p>
<%
    String s = request.getParameter("number");
    out.println("<br>传过来的值是"+s);
%>
<br>
<%--Local--%>
<%--<img src="./img/b.png" alt="b.jpg" width="<%= s %>" height="<%= s %>">--%>

<%--for web server--%>
<%
    String  url  =  "http://"  +  request.getServerName()  +  ":"  +  request.getServerPort()  +  request.getContextPath()+request.getServletPath().substring(0,request.getServletPath().lastIndexOf("/")+1);
    out.print("<img src=\"" +url+"img/b.png\""+"alt=\"b.png\" width=\""+s+"\" height=\""+s+"\">");

%>
</body>
</html>

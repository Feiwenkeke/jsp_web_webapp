<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>error.jsp</title>
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
<p class="font-set-flag">This is error.jsp</p>
<%
    String s = request.getParameter("mess");
    out.println("<br>传过来的错误信息是"+s);
%>
<br>
<%--Local--%>
<%--<img src="/img/error.png" alt="error.jpg" width="120" height="120">--%>

<%--for web server--%>
<%
    String  url  =  "http://"  +  request.getServerName()  +  ":"  +  request.getServerPort()  +  request.getContextPath()+request.getServletPath().substring(0,request.getServletPath().lastIndexOf("/")+1);
    out.print("<img src=\"" +url+"img/error.png\""+"alt=\"error.png\" width=\""+"120"+"\" height=\""+"120"+"\">");

%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/23
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>people</title>
    <style type="text/css">
        body {
            background-color: yellow;
            font-size: 18px;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%!
    int count;
    StringBuffer personList;
    public void judge() {
        if (count == 0) {
            personList = new StringBuffer();
        }
    }

    public void addPerson(String p) {
        if (count == 0) {
            personList.append(p);
        } else {
            personList.append("," + p);
        }
        count++;
    }
%>

<%
    String name= request.getParameter("name");
// Because of using UTF-8,need not to transform;
//    byte bb[] = name.getBytes("UTF-8");
//    name = new String(bb)
    if ((name==null)||(name.equals(""))||(name.length() == 0) || (name.length() > 10)) {
%>

    <jsp:forward page="ch2_inputName.jsp"></jsp:forward>
<%
    }
    judge();
    addPerson(name);
%>
<br>目前有<%= count %> 人浏览了该页面，他们的名字是：
<br>
<%= personList %>
</body>
</html>
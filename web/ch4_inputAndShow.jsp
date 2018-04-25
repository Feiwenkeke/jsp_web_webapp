<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/25
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="car" class="pojo.Car" scope="request"></jsp:useBean>
<%
    request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
    <title>ch4_inputAndShow</title>
    <style type="text/css">
        body{
            background: yellow;
        }
        #table-show{
            border: 1px;
        }
    </style>
</head>
<body>

    <div>
        <form action="" method="post">
            汽车牌号：
            <input type="text" name="number">
            <br>
            汽车名称：
            <input type="text" name="name">
            <br>
            汽车生产日期：
            <input type="text" name="madeTime">
            <input type="submit" value="提交">
        </form>
    </div>

    <jsp:setProperty name="car" property="*"></jsp:setProperty>
    <div>
        <table id="table-show">
            <tr>
                <th>汽车牌号</th>
                <th>汽车名称</th>
                <th>汽车生产日期</th>
            </tr>
            <tr>
                <td><jsp:getProperty name="car" property="number"></jsp:getProperty></td>
                <td><jsp:getProperty name="car" property="name"></jsp:getProperty></td>
                <td><jsp:getProperty name="car" property="madeTime"></jsp:getProperty></td>
            </tr>
        </table>
    </div>
</body>
</html>

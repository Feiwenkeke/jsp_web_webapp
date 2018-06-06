<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/6/6
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch7.1_inputDatabase</title>
</head>
<jsp:useBean id="recordBean" class="pojo.ExBean" scope="session"/>
<body bgcolor="yellow">
<font size="2">
    <form action="ExServlet" method="post">
        <br>
        数据库：<input type="text" name="dataBase" size="23" value="jsp">
        <br>
        表名：<input type="text" name="tableName" size="23" value="jsp">
        <br>
        用户名：<input type="text" name="user" size="10" value="root">
        <br>
        密码：<input type="text" name="password" size="10" value="">
        <br>
        <input type="submit" name="button" value="提交">

    </form>

    <table border="1">
        <%
            String[][] table = recordBean.getTableRecord();
            if (table == null) {
                out.print("没有记录");
                return;
            }
            String[] columnName = recordBean.getColumnName();
            if (columnName != null) {
                out.print("<tr>");
                for (int i = 0; i < columnName.length; i++) {
                    out.print("<th>" + columnName[i] + "</th>");
                }
                out.print("</tr>");
            }
            out.println("全部记录数" + table.length); //全部记录数

            for (int i = 0; i < table.length; i++) {
                out.print("<tr>");
                for (int j = 0; j < columnName.length; j++) {
                    out.print("<td>" + table[i][j] + "</td>");
                }
                out.print("</tr>");
            }
        %>
    </table>
</font>

</body>
</html>

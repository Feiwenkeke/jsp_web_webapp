<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://cdn.bootcss.com/vue/2.5.17-beta.0/vue.js"></script>
    <script src="https://cdn.bootcss.com/element-ui/2.3.6/index.js"></script>
    <link href="https://cdn.bootcss.com/element-ui/2.3.6/theme-chalk/index.css" rel="stylesheet">
    <style type="text/css">
        .header {

        }

        .box-card {
            width: 400px;
        }

        .item {
            padding: 20px;
        }

        a {
            text-decoration: none
        }
    </style>
</head>

<body>
<div id="app">
    <el-card class="box-card item">
        <div class="header">
            <a href="ch3_login.jsp">登陆</a>
            /
            <a href="ch3_show.jsp">看图</a>
            /
            <a href="ch3_exit.jsp">退出</a>
        </div>

        <div>
            <form action="" method="post" name="form">
                <p>请输入账户：</p>
                <el-input name="name" style="width: 60%"></el-input>
                <el-button native-type="submit">提交</el-button>
            </form>
        </div>
    </el-card>
</div>

<script>
    new Vue({
        el: '#app',

    })
</script>

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
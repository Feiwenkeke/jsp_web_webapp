<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>ch3_exit</title>
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
        .content {
            background: yellow;
        }
    </style>
</head>
<body>

<div id="app">
    <el-card class="box-card item">
        <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal">
            <el-menu-item index="1" @click="login">登陆</el-menu-item>
            <el-menu-item index="2" @click="show">看图</el-menu-item>
            <el-menu-item index="3" @click="exit">退出</el-menu-item>
        </el-menu>
        <%--<div class="header">--%>
            <%--<a href="ch3_login.jsp">登陆</a>--%>
            <%--/--%>
            <%--<a href="ch3_show.jsp">看图</a>--%>
            <%--/--%>
            <%--<a href="ch3_exit.jsp">退出</a>--%>
        <%--</div>--%>
        <%
            session.invalidate();
        %>
        <div class="content">
            <b>session 会话失效</b>
        </div>
    </el-card>
</div>


<script>
    new Vue({
        el: '#app',
        data() {
            return {
                activeIndex: '3'
            };
        },
        methods: {
            login() {
                window.location.href = 'ch3_login.jsp';
            },
            show() {
                window.location.href = 'ch3_show.jsp';
            },
            exit() {
                window.location.href = 'ch3_exit.jsp';
            }
        }

    })
</script>

</body>
</html>

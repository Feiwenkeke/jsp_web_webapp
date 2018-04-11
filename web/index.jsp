<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/3/8
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page language="java" import="tools.showDirContent"%>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        .container{
            display: table;
            width: 400px;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="bs-example" data-example-id="panel-without-body-with-table">
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">JSP</div>

            <!-- Table -->
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>JSP-name</th>

                </tr>
                </thead>
                <tbody>

                <%
                    String absPath = new java.io.File(application.getRealPath(request.getRequestURI())).getParent();
                    String path = request.getContextPath();
                    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
                    String  url  =  "http://"  +  request.getServerName()  +  ":"  +  request.getServerPort()  +  request.getContextPath()+request.getServletPath().substring(0,request.getServletPath().lastIndexOf("/")+1);
//                    System.out.println(path);
//                    System.out.println(basePath);
//                    System.out.println(url);
                    showDirContent showdircontent = new showDirContent();
                    int count =0;
                    showdircontent.iteratorPath(absPath);
                    List<String> pathName =showdircontent.getPathName();
                    for (String list : pathName) {

                        if (list.contains(".jsp")){

//                System.out.println(list);
//                            NoShow index过滤
                            if (!(list.contains("NoShow"))&&!(list.contains("index"))){
                                count++;
                                out.print("<tr class=\"my_line\">" +
                                        "<th scope=\"row\">"+count+"</th>"
                                        +"<td>"
                                        +"<a href="+url+"/"+list+">"+list+"</a>"+"</td>" +
                                        "</tr>"
                                );
                            }





//                out.println("<a href="+url+"/"+list+">"+list+"</a>");
                        }

                    }
                %>

                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: feiwe
  Date: 2018/4/11
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ch3_result</title>
    <style type="text/css">

    </style>
</head>
<body bgcolor="green">
<%
    String numberOne = request.getParameter("numberOne");
    String numberTwo = request.getParameter("numberTwo");
    String operator = request.getParameter("operator");
    if (numberOne == null) {
        numberOne = "0";
    }

    if (numberTwo == null) {
        numberTwo = "0";
    }

    try {
        double a = Double.parseDouble(numberOne);
        double b = Double.parseDouble(numberTwo);
        double r = 0;
        switch (operator) {
            case "+":
                r = a + b;
                break;
            case "-":
                r = a - b;
                break;
            case "*":
                r = a * b;
                break;
            case "/":
                r = a / b;
                break;
        }
        out.println(a+" "+operator+" "+b+" = "+r);
    }catch (Exception e){
        out.println("请输入数字字符");
    }
%>

</body>
</html>

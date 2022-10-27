<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>쿠키 객체정보 얻기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    Cookie[] cookies =request.getCookies();
    out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
    out.println("====================================<br>");

    for(int i = 0; i < cookies.length; i++) {
        out.println("설정된 쿠키의 속성 이름 [" + i + "] : " + cookies[i].getName() + "<br>");
        out.println("설정된 쿠키의 속성 값 [" + i + "] : " + cookies[i].getValue() +"<br>");
        out.println("====================================<br>");
    }
%>
<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie03.jsp">쿠키 삭제</a>
</body>
</html>
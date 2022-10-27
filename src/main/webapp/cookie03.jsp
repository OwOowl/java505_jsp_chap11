<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>쿠키 삭제하기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%-- 쿠키삭제는 쿠키의 유효기간을 0으로 설정하여 삭제하여야 함 --%>
<%
    Cookie[] cookies = request.getCookies();

    for(int i = 0; i < cookies.length; i++) {
        if(!cookies[i].getName().equals("JSESSIONID")) {
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
        }
    }

%>

<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie02.jsp">쿠키 확인</a>
</body>
</html>

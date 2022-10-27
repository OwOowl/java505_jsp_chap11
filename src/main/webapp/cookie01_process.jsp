<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>쿠키 사용하기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    if(userId.equals("admin") && userPw.equals("1234")) {
        Cookie cookieId = new Cookie("userId", userId);
        Cookie cookiePw = new Cookie("userPw", userPw);

        response.addCookie(cookieId);
        response.addCookie(cookiePw);

        out.println("쿠키 생성이 성공하였습니다.");
        out.println(userId + "님 환영합니다.");
    }
    else {
        out.println("쿠키 생성이 실패하였습니다.");
    }


%>

<a href="cookie01.jsp">쿠키 생성</a>
<a href="cookie02.jsp">쿠키 확인</a>
<a href="cookie03.jsp">쿠키 삭제</a>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전역변수 테스트</title>
    <%
        String userId = application.getInitParameter("userId");
        String memberId = application.getInitParameter("memberId");
        application.setAttribute("sid","kim");
    %>
</head>
<body>
<h2><%=userId %>님의 웹 애플리케이션</h2>
<h2>관리자님의 아이디는 <%=memberId %>입니다.</h2>
<%
    String sid = (String) application.getAttribute("sid");
%>
<h2>손님의 아이디는 <%=sid %></h2><hr>
<a href="test02.jsp">전역변수 테스트2</a>
<a href="/">메인으로</a>
</body>
</html>
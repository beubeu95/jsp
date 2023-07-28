<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <%
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
    %>
</head>
<body>
<div class="container">
    <ul class="lst">
        <li><span>아이디 : </span><%=id %></li>
        <li><span>비밀번호 : </span><%=pw %></li>
    </ul>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>notFoundErrorPage</title>
    <%
        String path9 = request.getContextPath();
    %>
</head>
<body>
<div class="container">
    <h2>요청하신 주소의 페이지를 찾을 수 없습니다.</h2>
    <figure class="vs">
        <img src="<%=path9 %>/img/img404.jpeg" alt="404에러">
    </figure>
</div>
</body>
</html>
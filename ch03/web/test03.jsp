<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test03</title>
    <%
        pageContext.setAttribute("name","김현경");
        pageContext.setAttribute("age","29");
    %>
</head>
<body>
<h2 class="title">include directive</h2>
<div class="container">
    <%@ include file="includeFile.jsp"%>
</div>
<hr>
<h2 class="title">include action tag</h2>
<div class="container">
    <jsp:include page="includeFile.jsp"></jsp:include>
</div>
</body>
</html>
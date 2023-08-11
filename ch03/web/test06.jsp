<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL(Expression Language)</title>
</head>
<body>
<%
    //표현식 사용시에는 데이터변수로 저장하고, 매개변수로 전달해야함
    String title = "배고파";
    String [] hk = {"asd","sdf", "asdf","asdsf"};
    Map<String, String> hkk = new HashMap<>();
    hkk.put("name","알짱황");
    hkk.put("age","72");
    hkk.put("nick","교주");

    //EL 사용시에는 데이터를 넘기는 곳에서 setAttribute
    request.setAttribute("title", title);
    request.setAttribute("hk", hk);
    request.setAttribute("hkk", hkk);
%>

    <h2>표현식(Expression)</h2>
    <p><%=title %></p>
    <div class="cate">
        <% for(String s:hk){ %>
            <p><%=s %></p>
        <% } %>
    </div>
    <p><%=hkk %></p>


    <hr>
    <h2>표현 언어(Expression Language)</h2>
    <p>${title }</p>
    <p>${hk }</p>
    <p>${hkk }</p>

</body>
</html>
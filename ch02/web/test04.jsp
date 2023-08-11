<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    //Scope Test - test4.jsp
    pageContext.setAttribute("pageData","페이지컨텍스트"); //현재 페이지에서만 유효
    request.setAttribute("reqData","요청한데이터");
    session.setAttribute("sesData","세션데이터");
    application.setAttribute("appData","애플리케이션데이터");
    request.setAttribute("msg","안녕하세요!");
    RequestDispatcher rd = request.getRequestDispatcher("test5.jsp");
    rd.forward(request, response);
    %>


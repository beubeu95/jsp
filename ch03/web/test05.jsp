<%@ page import="java.util.Enumeration" %>
<%@ page import="java.net.InetAddress" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>requst. header</title>
</head>
<body>
<div class="info">
    <%
        Enumeration e = request.getHeaderNames();
        while(e.hasMoreElements()){
            String name = (String) e.nextElement();
            String value = request.getHeader(name);
            out.println("<span> : "+name+",value="+value+"</p>");
        }
    %>
        <h2>Server or Client IPAddress/HostName</h2>
    <%
        out.println("<p>접속 pc 주소 : " +request.getLocalAddr()+"</p>");
        InetAddress ipaddr = InetAddress.getLocalHost();
        out.println("<p>서버 주소1 : "+request.getRemoteAddr()+"</p>");
        out.println("<p>서버 주소2 : "+ipaddr+"</p>");
        out.println("<p>서버 홈디렉토리 : "+request.getin()+"</p>");


    %>
</div>

</body>
</html>
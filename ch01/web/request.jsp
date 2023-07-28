<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <%
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        int year = Integer.parseInt((request.getParameter("year")));
        String name = request.getParameter("name");
        String [] pet = request.getParameterValues("pet");
            for(int i=0; i< pet.length;i++){
                if(pet[i].equals("강아지")){
                    pet[i]="강아지";
                }else if(pet[i].equals("고양이")){
                    pet[i]="고양이";
                }else if(pet[i].equals("송아지")){
                    pet[i]="송아지";
                }else{
                    pet[i]="수달";
                }
            }
    %>
</head>
<body>
<div class="container">
    <p>아이디 : <strong><%=id %></strong></p>
    <p>출생년도 : <strong><%=year %></strong></p>
    <p>이름 : <strong><%=name %></strong></p>
    <p>좋아하는 동물<br>
    <%for(int i=0;i<pet.length;i++){ %>
    <strong><%=pet[i] %></strong><br>
    <%} %>
    </p>
</div>
</body>
</html>
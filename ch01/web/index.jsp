
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  private String name;
  public String getName(){
    return this.name;
  }
  public void setName(String name){
    this.name = name;
  }
%>
<DOCTYPE html>
  <html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    setName("김현경");
    String addr = "가산동";

  %>
  <div class="container">
    <h2>천재교육</h2>
  </div>
  <hr>
  <p>이름 : <%=getName() %></p>
  <p>주소 : <%=addr %></p>
  <a href="test01.jsp">테스트1</a>
  </body>
  </html>
</DOCTYPE>
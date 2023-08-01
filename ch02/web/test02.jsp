<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
<%
    //보내는 곳에서 담는 부분
    Student st1=new Student();
    st1.setNo(1);
    st1.setName("김현경");
    st1.setKor(100);
    st1.setEng(70);
    st1.setMat(100);
    request.setAttribute("st1", st1);

    List<Student> st = new ArrayList<>();
    Student s = new Student();
    s.setNo(1);
    s.setName("김가가");
    s.setKor(98);
    s.setEng(90);
    s.setMat(100);
    st.add(s);

    Student s2 = new Student();
    s.setNo(2);
    s.setName("김나나");
    s.setKor(100);
    s.setEng(100);
    s.setMat(100);
    st.add(s);

    request.setAttribute("st",st);

    ArrayList<String> lst = new ArrayList<>();
    lst.add("김다다");
    lst.add("김라라");
    lst.add("김마마");
    lst.add("김바바");

    request.setAttribute("lst", lst);

    HashSet<String> set =new HashSet<>();
    set.add("김사사");
    set.add("김아아");
    set.add("김자자");
    set.add("김차차");
    set.add("김카카");
    set.add("김아아");

    request.setAttribute("set", set);

    HashMap<String, String> map = new HashMap<>();
    map.put("no","3");
    map.put("name","김타타");
    map.put("kor","88");
    map.put("eng","100");
    map.put("mat","100");

    request.setAttribute("map", map);

    RequestDispatcher rd = request.getRequestDispatcher("test03.jsp"); //보내질 곳 지정
    rd.forward(request, response);
    //response.sendRedirect("test3.jsp?map="+map); 사이트 이동
%>

<%
    //받는 곳에서 출력하는 부분
    out.println("<p>번호 : "+st1.getNo()+"</p>");
%>

    <p>이름 : <%=st1.getName() %></p>
    <p>국어 : <%=st1.getKor() %></p>
    <p>영어 : <%=st1.getEng() %></p>
    <p>수학 : <%=st1.getMat() %></p>
    <p>총점 : <%=st1.getKor() + st1.getEng() + st1.getMat()%></p>
</body>
</html>
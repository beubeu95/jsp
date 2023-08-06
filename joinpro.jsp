<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@ page import="com.chunjae.dto.*" %>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");

    int cnt=0;
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if(conn != null){
        System.out.println("DB 연결 성공");
    }

    try {
        String sql = "INSERT INTO member values (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        pstmt.setString(3, name);
        pstmt.setString(4, email);
        pstmt.setString(5, tel);
        cnt = pstmt.executeUpdate();
        if(cnt>0) {
            response.sendRedirect("/");
        }else {
            response.sendRedirect("/member/join.jsp");
        }
    } catch(SQLException e) {
        System.out.println("SQL 구문이 처리되지 못했습니다.");
    } finally {
        con.close(rs, pstmt, conn);
    }
%>
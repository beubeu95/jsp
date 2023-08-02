package test;

import java.sql.*;

public class DBConTest {
    public static void main(String[] args) throws SQLException {
        final String DRIVER = "org.mariadb.jdbc.Driver";  //클래스이름
        final String DNS = "localhost";
        final String PORT = "3306";
        final String NAME = "edu";
        final String USER = "root";
        final String PASS = "1234";
        //final String URL = "프로토콜:디비종류://호스트주소:포트번호/데이터베이스이름";
        //final String URL = "jdbc:mariadb://localhost:3306/edu";
        final String URL = "jdbc:mariadb://" + DNS + ":" + PORT + "/" + NAME;

        Connection conn = null;
        PreparedStatement pstmt =null;
        ResultSet rs = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASS);
            if (conn != null) {
                System.out.println("DB 연결 성공");
            }
        }catch(ClassNotFoundException e){
            System.out.println("DB 연결 실패");
        }

        String sql = "select * from member where id=?";
        String id = "admin";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                System.out.println("아이디 : " + rs.getString("id"));
                System.out.println("비밀번호 : " + rs.getString("pw"));
                System.out.println("이름 : " + rs.getString("name"));
                System.out.println("가입일 : " + rs.getString("id"));
                System.out.println("포인트 : " + rs.getString("id"));
            }
        } catch (SQLException e) {
            System.out.println("sql 구문에 오류가 있어 실행하지 못했습니다.");
            throw new RuntimeException(e);
        }finally {
            try{
                if(rs!= null){ rs.close(); }
                if(pstmt!=null){ pstmt.close(); }
                if(conn != null){ conn.close(); }
            } catch (SQLException e) {
                System.out.println("데이터베이스 작업을 종료하지 못했습니다.");
            }
        }
        

    }
}

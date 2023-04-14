<%@ page contentType="application/json; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
	String id = (String) session.getAttribute("sid");
	int count = 0;

	try {
		// JDBC 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");

		// 데이터베이스 연결
		String url = "jdbc:mysql://localhost:3306/gpqd";
		String username = "root";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, username, password);

		// 쿼리 실행
		String sql = "SELECT COUNT(*) FROM review WHERE userID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();

		// 결과 처리
		if (rs.next()) {
			count = rs.getInt(1);
		}

		// 연결 해제
		rs.close();
		pstmt.close();
		conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	// 결과 반환
	out.print(count);
%>
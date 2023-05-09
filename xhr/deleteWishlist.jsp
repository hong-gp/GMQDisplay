<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");
	String Mno = request.getParameter("mno");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		// 상품 조회
		String sql = "DELETE FROM wishlist WHERE userID=? AND Mno=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, Mno);

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}
%>
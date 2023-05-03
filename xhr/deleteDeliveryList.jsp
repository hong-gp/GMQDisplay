<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("sid");
	String delivery_id = request.getParameter("id");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "DELETE FROM deliveryList WHERE delivery_id=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, delivery_id);

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}
%>
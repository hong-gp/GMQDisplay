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

		String sql2 = "UPDATE deliveryList SET delivery_basic=false WHERE userID=?";
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt2.setString(1, id);

		pstmt2.executeUpdate();

		String sql = "UPDATE deliveryList SET delivery_basic=true WHERE delivery_id=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, delivery_id);

		pstmt.executeUpdate();

	} catch (Exception e) {
		out.print(e);
	}
%>
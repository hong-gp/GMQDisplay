<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("sid");
	String name = request.getParameter("name");
	String userName = request.getParameter("userName");
	String phone = request.getParameter("phone");
	String zip = request.getParameter("zip");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String basicStr = request.getParameter("basic");
	boolean basic = false;
	if (basicStr.equals("true"))
		basic = true;
		

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		if (basic == true) {
			String sql2 = "UPDATE deliveryList SET delivery_basic=false WHERE userID=?";
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setString(1, id);

			pstmt2.executeUpdate();
		}

		String sql = "INSERT INTO deliveryList (userID, delivery_name, delivery_userName, delivery_phone, delivery_zip, delivery_addr1, delivery_addr2, delivery_basic) VALUES (?,?,?,?,?,?,?,?)"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, userName);
		pstmt.setString(4, phone);
		pstmt.setString(5, zip);
		pstmt.setString(6, addr1);
		pstmt.setString(7, addr2);
		pstmt.setBoolean(8, basic);

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}
%>
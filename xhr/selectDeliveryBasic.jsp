<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("sid");
	String userName = "";
	String phone = "";
	String zip = "";
	String addr1 = "";
	String addr2 = "";
	
	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql3 = "SELECT * FROM deliveryList WHERE userID=? AND delivery_basic=true";
		PreparedStatement pstmt3 = con.prepareStatement(sql3);
		pstmt3.setString(1, id);

		ResultSet rs3 = pstmt3.executeQuery();
		if (rs3.next()) {
			userName = rs3.getString("delivery_userName");
			phone = rs3.getString("delivery_phone");
			zip = rs3.getString("delivery_zip");
			addr1 = rs3.getString("delivery_addr1");
			addr2 = rs3.getString("delivery_addr2");
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
<body>
	<span id="userName"><%=userName%></span>
	<span id="phone"><%=phone%></span>
	<span id="zip"><%=zip%></span>
	<span id="addr1"><%=addr1%></span>
	<span id="addr2"><%=addr2%></span>
</body>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html>
<head>
<style>
* {
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("username");
	String password = request.getParameter("password");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "SELECT * FROM user WHERE userID=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			if(password.equals(rs.getString("userPassword"))) {

				session.setAttribute("sid", id);
				response.sendRedirect("../index.html");
			} else {
%>
				<div>아이디가 틀립니다.</div>
			}
<%
		} else {
%>
				<div>비밀번호가 틀립니다.</div>
<%
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>
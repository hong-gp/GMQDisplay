<%@ page contentType="application/json; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
	String id = request.getParameter("userName");
	String pw = request.getParameter("password");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT COUNT(*) AS cnt FROM Step WHERE StepID = ? AND StepPassword = ?";
	String result = "";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gpqd?useSSL=false&characterEncoding=UTF-8", "root", "1234");
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			int cnt = rs.getInt("cnt");
			if (cnt > 0) {
				result = "{\"result\":\"success\"}";
				session.setAttribute("sid", id);
			} else {
				result = "{\"result\":\"fail\"}";
			}
		} else {
			result = "{\"result\":\"fail\"}";
		}
	} catch (Exception e) {
		result = "{\"result\":\"error\"}";
	} finally {
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
		out.print(result);
	}
%>
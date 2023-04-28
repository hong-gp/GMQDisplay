<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("sid");
	String Mno = request.getParameter("Mno");

	Date now = new Date();
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String date = format.format(now);

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "SELECT * FROM wishlist WHERE userID=? AND Mno=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, Mno);

		ResultSet rs = pstmt.executeQuery();
		if (!rs.next()) {
			String sql_insert = "INSERT INTO wishlist (userID, Mno,	wishlist_date) VALUES (?,?,?)";
			PreparedStatement pstmt_insert = con.prepareStatement(sql_insert);
			pstmt_insert.setString(1, id);
			pstmt_insert.setString(2, Mno);
			pstmt_insert.setString(3, date);

			pstmt_insert.executeUpdate();
		} else {
			String sql_delete = "DELETE FROM wishlist WHERE userID=? AND Mno=?";
			PreparedStatement pstmt_delete = con.prepareStatement(sql_delete);
			pstmt_delete.setString(1, id);
			pstmt_delete.setString(2, Mno);

			pstmt_delete.executeUpdate();
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
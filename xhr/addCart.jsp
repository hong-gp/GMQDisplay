<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");
	String Mno = request.getParameter("Mno");
	int cart_count = Integer.parseInt(request.getParameter("countPrd"));
	DecimalFormat df = new DecimalFormat("###,###");
	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "SELECT * FROM cart WHERE userID=? AND Mno=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, Mno);

		ResultSet rs = pstmt.executeQuery();

		String sql3 = "SELECT * FROM wishlist WHERE userID=? AND Mno=?";
		PreparedStatement pstmt3 = con.prepareStatement(sql3);
		pstmt3.setString(1, id);
		pstmt3.setString(2, Mno);
		ResultSet rs3 = pstmt3.executeQuery();
		if (rs3.next()) {
			String sql4 = "DELETE FROM wishlist WHERE userID=? AND Mno=?";
			PreparedStatement pstmt4 = con.prepareStatement(sql4);
			pstmt4.setString(1, id);
			pstmt4.setString(2, Mno);
			pstmt4.executeUpdate();
		}

		if (!rs.next()) {
			String sql2 = "INSERT INTO cart VALUES (?,?,?)";
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setString(1, id);
			pstmt2.setString(2, Mno);
			pstmt2.setInt(3, cart_count);
			pstmt2.executeUpdate();
			out.print("add");
		} else {
			if ((rs.getInt("cart_count") + cart_count) > 0) {
				String sql2 = "UPDATE cart SET cart_count=? WHERE userID=? AND Mno=?";
				PreparedStatement pstmt2 = con.prepareStatement(sql2);
				pstmt2.setInt(1, (rs.getInt("cart_count") + cart_count));
				pstmt2.setString(2, id);
				pstmt2.setString(3, Mno);
				pstmt2.executeUpdate();

				out.print(rs.getInt("cart_count") + cart_count);
			} else {
				out.print(rs.getInt("cart_count"));
			}
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
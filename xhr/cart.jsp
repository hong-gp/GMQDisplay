<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html>
<body>
<%
	DecimalFormat df = new DecimalFormat("###,###");
	String id = (String)session.getAttribute("sid");
	String Mno = request.getParameter("Mno");
	String[] Mnos = Mno.split("/");

	int total_count = 0;
	int total_price = 0;
	int total_sale = 0;
	int total = 0;

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		for (int i = 0; i < Mnos.length; i++) {
			String sql = "SELECT * FROM cart WHERE Mno=?"; 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Mnos[i]);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				int count = 0;
				count += rs.getInt("cart_count");
				total_count += count;
				String sql2 = "SELECT * FROM product WHERE Mno=?";
				PreparedStatement pstmt2 = con.prepareStatement(sql2);
				pstmt2.setString(1, rs.getString("Mno"));

				ResultSet rs2 = pstmt2.executeQuery();
				if (rs2.next()) {
					total_price += (rs2.getInt("Mprice") * count);
					total_sale += ((rs2.getInt("Mprice") - rs2.getInt("Msale")) * count);
				}

			}
		}
		total = total_price - total_sale;
		
	} catch (Exception e) {
		out.print(e);
	}
%>
	<span><%=Mnos%></span>
	<span class="blind" id="total_count"><%=total_count%></span>
	<span class="blind" id="total_price"><%=df.format(total_price)%></span>
	<span class="blind" id="total_sale"><%=df.format(total_sale)%></span>
	<span class="blind" id="total"><%=df.format(total)%></span>
</body>
</html>
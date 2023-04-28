<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">
<head>
</head>
<body>
<script>
	$(document).ready(function(){
		prcSpace()
	})
	
	function prcSpace(){
		for(var i = 1 ; i <= 3 ; i++ ){
			var orgPrc = $("#orgPrc"+i).val();
			var dd = orgPrc.replace(/,/gi , ", ")
 			$("#spacePrc"+i).html(orgPrc);
		}
	}
</script>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");
	DecimalFormat df = new DecimalFormat("###,###");
	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		// 상품 조회
		String sql = "SELECT * FROM cart WHERE userID=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();
		if (!rs.next() || id == null) {
%>
			<li class="cart-empty">
				<p>장바구니에 담겨있는 상품이 없습니다.</p>
			</li>
<%
		} else {
			do {
				String sql2 = "SELECT * FROM product WHERE Mno=?";
				PreparedStatement pstmt2 = con.prepareStatement(sql2);
				pstmt2.setString(1, rs.getString("Mno"));

				ResultSet rs2 = pstmt2.executeQuery();
				if (rs2.next()) {
%>
<li>
	<a href="/GMQDisplay-master/product/<%=rs2.getString("Mno")%>.jsp" data-omni="<%=rs2.getString("Mno")%>|<%=rs2.getString("Mno")%>">
		<p class="cart-itm-img">
		<img src="/GMQDisplay-master/static/images/product/<%=rs2.getString("Mno")%>_1.png" alt="<%=rs2.getString("Mname")%>"></p>
		<div class="cart-itm-data">
			<p class="cart-itm-name"><%=rs2.getString("Mname")%></p>
			<p class="cart-itm-price">
				혜택가&nbsp;<span id="spacePrc1"><%=df.format(rs2.getInt("Msale"))%></span>&nbsp;원
				<input type="hidden" id="orgPrc1" value="<%=df.format(rs2.getInt("Msale"))%>">
			</p>
		</div>
	</a>
</li>
<%
				}
			} while (rs.next());
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>
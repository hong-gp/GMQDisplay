<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");

	String userName = request.getParameter("name");
	String userEmail = request.getParameter("email");

	String userPhone1 = request.getParameter("per_cell");
	String userPhone2 = request.getParameter("per_cell2");
	String userPhone3 = request.getParameter("per_cell3");
	String userPhone = userPhone1 + userPhone2 + userPhone3;

	String deliveryName = request.getParameter("r_name");

	String deliveryPhone1 = request.getParameter("r_hphone1");
	String deliveryPhone2 = request.getParameter("r_hphone2");
	String deliveryPhone3 = request.getParameter("r_hphone3");
	String deliveryPhone = deliveryPhone1 + deliveryPhone2 + deliveryPhone3;

	String zip = request.getParameter("zip");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String deliveryAddress = zip + " " + addr1 + " " + addr2;
	String deliveryComment = request.getParameter("comment_select");

	String info = request.getParameter("info");

	String[] words = info.split(" ");

	ArrayList<String> Mnos = new ArrayList<String>();
	ArrayList<String> counts = new ArrayList<String>();

	for (int i = 0; i < words.length; i++) {
		String[] word = words[i].split("/");

		Mnos.add(word[0]);
		counts.add(word[1]);
	}

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String currentDate = sdf.format(new java.util.Date());

	String db_url = "jdbc:mysql://localhost:3306/gpqd";
	String db_id = "root";
	String db_password = "1234";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(db_url, db_id, db_password);

	try {
		String sql = "INSERT INTO orderInfo (userID, order_user_name, order_user_email, order_user_phone, order_delivery_name, order_delivery_phone, order_delivery_address, order_delivery_comment, order_date) VALUES (?,?,?,?,?,?,?,?,?)"; 
		PreparedStatement pstmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		pstmt.setString(1, id);
		pstmt.setString(2, userName);
		pstmt.setString(3, userEmail);
		pstmt.setString(4, userPhone);
		pstmt.setString(5, deliveryName);
		pstmt.setString(6, deliveryPhone);
		pstmt.setString(7, deliveryAddress);
		pstmt.setString(8, deliveryComment);
		pstmt.setString(9, currentDate);

		pstmt.executeUpdate();

		ResultSet generatedKeys = pstmt.getGeneratedKeys();
		if (generatedKeys.next()) {
			int orderId = generatedKeys.getInt(1);

			String sql2 = "SELECT * FROM orderInfo WHERE order_id=?";
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setInt(1, orderId);
			ResultSet rs = pstmt2.executeQuery();

			if(rs.next()) {
				for (int i = 0; i < words.length; i++) {
					String Mno = Mnos.get(i);
					int count = Integer.parseInt(counts.get(i));

					String sql3 = "INSERT INTO orderItem (order_id, userID, Mno, item_count) VALUES (?,?,?,?)";
					PreparedStatement pstmt3 = con.prepareStatement(sql3);
					pstmt3.setInt(1, rs.getInt("order_id"));
					pstmt3.setString(2, id);
					pstmt3.setString(3, Mno);
					pstmt3.setInt(4, count);

					pstmt3.executeUpdate();
				}
			}
		}

	} catch (Exception e) {
		out.print(e);
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String genre = request.getParameter("genre");
	String price = request.getParameter("price");
	int max = 0;
	int min = 0;
	if (price != null) {
		if (price.equals("10")) {
			max = 200000;
			min = 100000;
		} else if (price.equals("20")) {
			max = 300000;
			min = 200000;
		} else if (price.equals("30")) {
			max = 400000;
			min = 300000;
		} else if (price.equals("99")) {
			max = 99999999;
			min = 0;
		}
	}

	String double_monitor = request.getParameter("double_monitor");

	if (double_monitor != null) {
		if (double_monitor.equals("yes"))
			double_monitor = "지원";
		else 
			double_monitor = "미지원";
	}

	String speaker = request.getParameter("speaker");

	if (speaker != null) {
		if (speaker.equals("yes"))
			speaker = "지원";
		else 
			speaker = "미지원";
	}

	String colorStr = request.getParameter("color");
	int colorMin = 0;
	int colorMax = 0;

	if (colorStr != null) {
		if (colorStr.equals("yes")) {
			colorMin = 100;
			colorMax = 200;
		} else {
			colorMin = 0;
			colorMax = 99;
		}
	}
	
	String resolution = request.getParameter("resolution");

	if (resolution != null) {
		if (resolution.equals("1080p"))
			resolution = "1920 x 1080(FHD)";
		else if (resolution.equals("1440p"))
			resolution = "2560 x 1440(QHD)";
		else if (resolution.equals("4K"))
			resolution = "3840 x 2160(4K UHD)";
		else if (resolution.equals("5K"))
			resolution = "5120 x 1440(DQHD)";
		else if (resolution.equals("8K"))
			resolution = "7680 x 4320(8K)";
	}

	String panel = request.getParameter("panel");

	if (panel != null) {
		if (panel.equals("flat"))
			panel = "평면";
		else 
			panel = "커브드";
	}

	String inchValue = request.getParameter("inchValue");
	
	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "SELECT * FROM product";

		if (genre != null) {
			sql += " WHERE Mgenre=?";
		}

		if (price != null) {
			sql += " AND (Mprice BETWEEN ? AND ?)";
		}

		if (double_monitor != null) {
			sql += " AND Mdouble=?";
		}

		if (speaker != null) {
			sql += " AND Mspeaker=?";
		}

		if (colorStr != null) {
			 sql += "AND (Mcolor BETWEEN ? AND ?)";
		}

		if (resolution != null) {
			sql += " AND Mresolution=?";
		}

		if (panel != null) {
			sql += " AND Mform=?";
		}

		PreparedStatement pstmt = con.prepareStatement(sql);

		if (genre != null) {
			pstmt.setString(1, genre);
		}

		if (price != null) {
			pstmt.setInt(2, min);
			pstmt.setInt(3, max);
		}

		if (double_monitor != null) {
			pstmt.setString(4, double_monitor);
		}

		if (speaker != null) {
			pstmt.setString(5, speaker);
		}

		if (colorStr != null) {
			pstmt.setInt(6, colorMin);
			pstmt.setInt(7, colorMax);
		}

		if (resolution != null) {
			pstmt.setString(8, resolution);
		}

		if (panel != null) {
			pstmt.setString(9, panel);
		}

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {

			int p = rs.getInt("Mprice");
			String priceStr = "";
			if (p >= 100000 && p < 200000)
				priceStr = "10";
			else if (p >= 200000 && p < 300000)
				priceStr = "20";
			else if (p >= 300000 && p < 400000)
				priceStr = "30";

			String gamemodeStr = "";
			if (rs.getString("Msupport").equals("있음")) {
				gamemodeStr = "yes";
			} else {
				gamemodeStr = "no";
			}

			String resolutionStr = "";
			if (rs.getString("Mresolution").equals("1920 x 1080(FHD)"))
				resolutionStr = "1080p";
			else if (rs.getString("Mresolution").equals("2560 x 1440(QHD)"))
				resolutionStr = "1440p";
			else if (rs.getString("Mresolution").equals("3840 x 2160(4K UHD)"))
				resolutionStr = "4K";
			else if (rs.getString("Mresolution").equals("5120 x 1440(DQHD)"))
				resolutionStr = "5K";
			else if (rs.getString("Mresolution").equals("7680 x 4320(8K)"))
				resolutionStr = "8K";

			String panelStr = "";
			if (rs.getString("Mform").equals("평면"))
				panelStr = "flat";
			else 
				panelStr = "curve";

			String sizeStr = rs.getString("Msize").replaceAll("인치", "");

			String double_monitorValue = "";
			if (rs.getString("Mdouble").equals("지원"))
				double_monitorValue = "yes";
			else
				double_monitorValue = "no";

			String speakerValue = "";
			if (rs.getString("Mspeaker").equals("지원"))
				speakerValue = "yes";
			else
				speakerValue = "no";

			String colorValue = "";
			if (rs.getInt("Mcolor") >= 100)
				colorValue = "yes";
			else
				colorValue = "no";
%>
<body>
			<span class="genre"><%=rs.getString("Mgenre")%></span>
			<span class="price"><%=priceStr%></span>
			<span class="double_monitor"><%=double_monitorValue%></span>
			<span class="resolution"><%=resolutionStr%></span>
			<span class="panel"><%=panelStr%></span>
			<span class="size"><%=sizeStr%></span>
			<span class="speaker"><%=speakerValue%></span>
			<span class="color"><%=colorValue%></span>
</body>
<%
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
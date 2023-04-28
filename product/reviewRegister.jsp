<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String Mno = request.getParameter("Mno");
	String id = (String)session.getAttribute("sid");
	int rating = Integer.parseInt(request.getParameter("estmScore"));
	String[] keywordArray = request.getParameterValues("kwdchk");
	String keyword = "";
	if (keywordArray.length > 0) {
		for(int i=0; i<keywordArray.length; i++)
			keyword = keyword + keywordArray[i] + " ";
	} else {
		keyword = "G99";
	}
	String comment = request.getParameter("commentArea");

	Date now = new Date();
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String date = format.format(now);

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "INSERT INTO review (Mno, userID, review_rating, review_keyword, review_comment, review_date) VALUES (?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Mno);
		pstmt.setString(2, id);
		pstmt.setInt(3, rating);
		pstmt.setString(4, keyword);
		pstmt.setString(5, comment);
		pstmt.setString(6, date);

		pstmt.executeUpdate();

		response.sendRedirect(Mno + ".jsp");

	} catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>

<head>
  <title>회원가입을 축하합니다!</title>
  <link rel="stylesheet" href="./login_congrats.css">
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");

	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String name = lastname + firstname;

	String email = request.getParameter("email");
	String password = request.getParameter("password");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "INSERT INTO user (userID, userPassword, userName, userBirth, userGender, userEmail) VALUE (?,?,?,?,?,?)"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, "");
		pstmt.setString(5, "");
		pstmt.setString(6, "");

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}
%>
  <div class="container">
    <h1>회원가입을 축하합니다!</h1>
    <p>회원가입이 완료되었습니다. 환영합니다!</p>
    <a href="../index.html">홈으로 돌아가기</a>
  </div>
</body>

</html>
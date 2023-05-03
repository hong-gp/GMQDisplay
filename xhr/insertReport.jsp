<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("sid");
	String Category = request.getParameter("userCategory");   
	String Service = request.getParameter("userService");
	String Title = request.getParameter("userTitle");
	String Content = request.getParameter("userContent");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gpqd";  
     String DB_ID="root";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO userService (userID, userCategory , userService , userTitle , userContent ) VALUES (?,?,?,?,?)";	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,id);
	 pstmt.setString(2,Category);
	 pstmt.setString(3,Service);
	 pstmt.setString(4,Title);
	 pstmt.setString(5,Content);

	 pstmt.executeUpdate();
	 response.sendRedirect("/GMQDisplay-master/mypage/report1.jsp");
  } catch(Exception e) { 
		out.println(e);
}
%>
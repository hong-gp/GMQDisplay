<%@ page contentType="application/json; charset=utf-8" %>
<%
	boolean isLogin = false;

	// 여기에서 로그인 여부를 체크하는 로직을 구현합니다.
	String id = (String)session.getAttribute("sid");

	if (id != null) {
		isLogin = true;
	} else {
		isLogin = false;
	}
	// 로그인 되어 있다면 isLogin 변수를 true로 설정합니다.
	
	if(isLogin) {
		out.print("true");
	} else {
		out.print("false");
	}
%>
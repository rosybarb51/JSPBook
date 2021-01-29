<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	if (userId.equals("admin") && userPw.equals("1234")) {
		session.setAttribute("userID", userId);
		session.setAttribute("userPW", userPw);
		/* 세션 정보가 20초 살아있도록 설정함 
		- 세션 자동 파괴(은행사이트에 많이 쓰임) */
		session.setMaxInactiveInterval(20);
		out.println("세선 설정이 성공했습니다.");
		out.println(userId + "님 환영합니다.");
	}
	else {
		out.println("세선 설정이 실패했습니다.");
	}
	%>
	
	<br>
	<a href="./session01.jsp">session01 페이지로</a>
	<a href="./session02.jsp">session02 페이지로</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	
	<!-- 실습을 위해 세션에 데이터가 없어서 넣어줌 -->
	<%
	session.setAttribute("userID", "admin");
	session.setAttribute("userPW", "1234");
	%>
	
	<h4>--- 세션을 삭제하기 전 ---</h4>
	
	<%
	String userId = session.getAttribute("userID").toString();
	String userPw = session.getAttribute("userPW").toString();
	
	out.println("설정된 세션 이름 userID : " + userId + "<br>");
	out.println("설정된 세션 값 userPW : " + userPw + "<br>");
	
	/* 지정된 세션을 삭제, 값만 삭제되는 것이 아니라 전역변수가 삭제된다 */
	session.removeAttribute("userID");
	%>
	
	<h4>--- 세션을 삭제한 후 ---</h4>
	
	<%
	userId = (String)session.getAttribute("userID");
	userPw = (String)session.getAttribute("userPW");
	
	out.println("설정된 세션 이름 userID : " + userId + "<br>");
	out.println("설정된 세션 값 userPW : " + userPw + "<br>");
	%>
</body>
</html>

























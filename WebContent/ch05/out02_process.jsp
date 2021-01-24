<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 아래의 설정이 있어야 한글이 나옴.. */
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	%>
	
	<p>아이디 : <% out.println(userId); %></p>
	<p>비밀번호 : <% out.println(userPw); %></p>
</body>
</html>
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
	/* 원래 위에서 UTF-8로 다 설정해서 아래 설정 안해도되는데... 전송하는 부분에서 오류가 생긴듯 함. 그래서 아래의 코드를 추가해서 한글을 적어도 오류 안나게 함.. 이유가 뭘까 오류가 난... */
	request.setCharacterEncoding("utf-8");
	/* getParameter로 들어온 데이터를 끄집어낸다. */
	String userid = request.getParameter("userID");
	String userpw = request.getParameter("userPW");
	%>
	
	<!-- 표현문을 이용해서 출력함 -->
	<p>User Id : <%= userid %></p>
	<p>User PW : <%= userpw %></p>
</body>
</html>
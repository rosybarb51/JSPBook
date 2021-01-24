<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 우리가 만들 객체명 id="person"에서 person으로 지정 -->
<!-- request 해야 사용할 수 있음 -->
<!-- name에는 useBean의 아이디값 넣음, property는 Person 클래스의 변수값 -->
	<jsp:useBean id="person" class="ch04.Person" scope="request" />
	<p> 아이디 : <%= person.getId() %></p>
	<p> 이 름 : <%= person.getName() %></p>
</body>
</html>
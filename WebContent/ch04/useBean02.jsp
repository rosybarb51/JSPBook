<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- useBean 액션 태그를 사용하는 것은 기본 자바 문법에서 클래스 생성하는 것과 동일함 -->
	<jsp:useBean id="bean" class="ch04.Calculator" />
	
	
	
	<%
	int m = bean.process(5);
	out.print("5의 3 제곱 : " + m);
	%>
	
	
	
</body>
</html>
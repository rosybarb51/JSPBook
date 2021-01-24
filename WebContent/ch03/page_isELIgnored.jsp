<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 아래의 값을 넣으면 제대로 안 나온다... true 라고 해서 $와 {}을 인식 못하게 함 isELIgnored 속성임. -->
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	<!-- 자바에서 들어가는 부분은 ${ } -->
	${requestScope.RequestAttribute}
</body>
</html>
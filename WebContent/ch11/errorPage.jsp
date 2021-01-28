<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %> <!-- 2. 바로 에러페이지로 이동 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception page</title>
</head>
<body>
	<%
	/* 클라이언트로부터 요청사항이 없기 때문에 변수 name는 값이 없음 */
	String name = request.getParameter("name");
	name = name.toUpperCase(); // 1. 에러발생하면
	%>
	<p>name 파라미터 : <%= name %></p>
</body>
</html>
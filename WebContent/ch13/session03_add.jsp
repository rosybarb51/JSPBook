<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 데이터 생성해서 세션동작시키고 세션확인 페이지로 이동 -->
	<%
	for (int i = 0; i < 5; i++) {
		String name = "sessionName" + i;
		String value = name + "value(" + i + ")";
		
		session.setAttribute(name, value);
	}
	%>
	
	<a href="./session03.jsp">session03으로 이동</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 여기서 실행 -->
<!-- 세션 데이터 생성 부분 -->
	<%
	for (int i = 0; i < 5; i++) {
		String name = "sessionName" + i;
		String value = name + " value(" + i + ")";
		
		session.setAttribute(name, value);
	}
	%>
	<br><hr><br>
	<a href="./session06.jsp">session06으로 이동</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 아이디 : <%= request.getParameter("id") %></p>
	<%
	/* 스트링에 클라이언트에서 서버로 받은 매개변수 name인 파라미터의 정보를 받아옴 
	- 클라이언트 → 서버 : request
	- 클라이언트 ← 서버 : response
	*/
	String name = request.getParameter("name");
	%>
	<p> 이 름 : <%=java.net.URLDecoder.decode(name) %><!-- 압축 풀어줌 -->
</body>
</html>
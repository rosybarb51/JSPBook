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
	/* request : 클라이언트가 데이터 넘긴 걸 서버에 받은 것  */
	/* 앞 페이지에서 넘길 때 이름을 title로 넘긴거임. */
	String title = request.getParameter("title");
	%>
	<!-- 앞에서 넘길 때 인코딩 했으니까, 받을 때 해제해줘야함. URLDecoder랑  -->
	<h3><%= java.net.URLDecoder.decode(title) %></h3>
	Today is : <%= request.getParameter("date") %>
</body>
</html>
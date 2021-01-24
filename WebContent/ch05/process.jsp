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
	request.setCharacterEncoding("UTF-8");
	/* getParameter가 name으로 받아 올 수 있었던 건, request.jsp에서 input의 name="name"을 받아왔으므로 사용할 수 있다. 아래의 name은 input의 "" 안에 있는 name 이랑 똑같은 이름을 적어야 인식해서 받아 올 수 있다. */
	String name = request.getParameter("name");
	%>
	
	<p>이 름 : <%= name %></p>	
</body>
</html>
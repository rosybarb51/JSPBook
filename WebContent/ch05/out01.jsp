<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("오늘의 날짜 및 시각 : " + "<br>");
	/* out.println(java.util.Calendar.getInstance().getTime()); */
	/* 제일 위에 page import 해서 java.util.Calendar 하면 위와같이 길게 다 안 적어줘도 된다. 아래와같이 적어도 된다. */
	out.println(Calendar.getInstance().getTime());
	
	response.setIntHeader("Refresh", 3);
	%>
</body>
</html>
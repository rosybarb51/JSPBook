<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 아래 소스에 오류 발생 시 web.xml에 입력한 오류 페이지로 이동 -->
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int a = Integer.parseInt(num1);
	int b = Integer.parseInt(num2);
	int c = a / b;
	out.println(num1 + " / " + num2 + " = " + c);
	%>
</body>
</html>
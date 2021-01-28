<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 실행 후 숫자 1에 숫자, 숫자 2에 한글을 넣으면 오류가 난다. -->
	<form action="errorCode_process.jsp" method="post">
		<p>숫자 1 : <input type="text" name="num1"></p>
		<p>숫자 2 : <input type="text" name="num2"></p>
		<button type="submit">나누기</button>
	</form>
</body>
</html>
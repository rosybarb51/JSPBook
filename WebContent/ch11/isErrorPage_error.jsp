<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- isErrorPage 속성을 true로 설정하여 Exception 클래스를 사용할 수 있음 -->
<!-- isErrorPage 속성은 다른 문서에서 errorPage로 설정된 파일에서 디렉티브 태그를 사용하여 설정 -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<!-- 원래 Exception 클래스는 Java의 try/catch 문에서만 사용할 수 있었는데, 위에서처럼 isErrorPage 속성을 true로 설정해서 사용할 수도 있다. -->
	<!-- try {
	
	}
	catch (Exception e) {
	
	} -->
	<p> 오류가 발생하였습니다.</p>
	<p> 예외 유형 : <%=exception.toString() %></p>
	<p> 오류 메시지 : <%= exception.getMessage() %></p>
</body>
</html>
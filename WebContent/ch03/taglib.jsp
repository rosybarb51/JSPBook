<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- java로 안쓰고 JSTL 확장을 사용하는 방법 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- JSTL 이라는 스크립트를 사용하는 방식 -->
<!-- 0부터 10까지 2씩 올라간다는 뜻 -->
	<c:forEach var="k" begin="0" end="10" step="2">
		<c:out value="${k  }" />
	</c:forEach>
	
	
<!-- Java 사용하는 방식 -->
	<hr>
	
	<%
	for (int i = 1; i <= 10; i++) {
		out.print(i + " ");
	}
	%>
</body>
</html>
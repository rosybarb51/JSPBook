<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="page_isErrorPage_error.jsp" %>
    <!-- errorPage는 기본값이 false 인데 아래와 같이 true를 넣어서 에러가 아니라고 화면에 나타내줄 수 있다. exeption처리를 해주는 것임.  -->
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* String 클래스의 변수 str의 값이 null 이므로 toString()이 불가능함, null이라서 객체 체가 생성이 안되니까, String은 참조 객체이고, 객체 정보를 가져오는 toString은 당연히 오류가 난다. */
	String str = null;
	out.println(str.toString());
	%>
</body>
</html>
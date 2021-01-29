<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Enumeration 사용하기 위해 임포트함 -->
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
<!-- 세션 정보 보이는 페이지 -->
	<h4>--- 세션을 삭제하기 전 ---</h4>
	<%
	Enumeration<String> en = session.getAttributeNames();
	
	String name = null;
	String value = null;
	
	while (en.hasMoreElements()) {
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
	}
	
	out.println("설정된 세션 이름 userID : " + name + "<br>");
	out.println("설정된 세션 값 userPW : " + value + "<br>");
	
	if (request.isRequestedSessionIdValid() == true) {
		out.print("세션이 유효합니다.");
	}
	else {
		out.println("세션이 유효하지 않습니다.");
	}
	
	session.invalidate();
	%>
	
	<h4>--- 세션을 삭제한 후 ---</h4>
	
	<%
	if (request.isRequestedSessionIdValid() == true) {
		out.print("세션이 유효합니다.");
	}
	else {
		out.print("세션이 유효하지 않습니다.");
	}
	%>
</body>
</html>





















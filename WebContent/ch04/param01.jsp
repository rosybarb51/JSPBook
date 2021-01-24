<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3> <!-- 밑의 forward 때문에 이동해서 이 부분은 제거 됨 -->
	<jsp:forward page="param01_data.jsp">
<!-- param 의 매개 변수 두 개 사용 id = admin, name = 관리자 -->
		<jsp:param name="id" value="admin" />
<!-- java.net.URLEncoder.encode("관리자") : 처음에 영어로 만들어져서, 2 바이트 이상의 크기를 가지는 문자를 HTTP로 전송 시 표현이 불가능(한글같은..) =>그래서 나온 것이 URLEncoder(압축기)과 URLDecoder(해제기). => 사용할때는 디코더로 풀어서 사용, 보낼땐 인코더로 압축해서 보냄 -->
<!--  -->
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자") %>' />
	</jsp:forward>
	<p>Java Server page</p> <!-- 위의 forward 때문에 이동해서 이 부분은 실행 안 함 -->
</body>
</html>
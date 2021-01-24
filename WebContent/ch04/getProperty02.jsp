<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바빈즈 사용 --><!-- 객체 생성 id라는.. --><!-- 사용클래스명 -->
	<jsp:useBean id="person" class="ch04.Person" scope="page" />
	<!-- setProperty : useBean의 객체의 정보 person을 가져옴 -->
	<!-- property : 자바빈즈의 멤버변수명 -->
	<!-- value : 수정값 -->
	<jsp:setProperty name="person" property="id" value="20201219" />
	<jsp:setProperty name="person" property="name" value="홍길덩" />
	<!-- getProperty : 데이터 가져오기 -->
	<!-- setProperty에서 저장한 그대로 가져옴 -->
	<p>아이디 : <jsp:getProperty name="person" property="id"></p>
	<p>이 름 : <jsp:getProperty name="person" property="name"/></p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- useBean04랑 비교해서 보면 어떤건지 알수있음  -->
<!-- useBean04랑 똑같은 거임. -->
</head>
<body>
	<jsp:useBean id="person" class="ch04.Person" scope="request"></jsp:useBean>
	<!-- setProperty : useBean 사용할 때 사용하는 것 -->
	<!-- 그냥 property : 자바빈즈의 멤버변수명 -->
	<!-- name : useBean의 ID값 -->
	<!-- value : 여기서 수정한 값 -->
	<jsp:setProperty property="id" name="perseon" value="20210119"/>
	<jsp:setProperty property="name" name="person" value="홍길동" />
	<p>아이디 : <% out.println(person.getId()); %> </p>
	<p>이름 : <% out.println(person.getName()); %> </p>
</body>
</html>


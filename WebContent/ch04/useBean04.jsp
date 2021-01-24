<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바파일넣을 땐 패키지명까지 꼭 넣어줘야함 -->
	<jsp:useBean id="person" class="ch04.Person" scope="request" />
	<p>아이디 : <%= person.getId() %> </p>
	<p>이 름 : <%= person.getName() %> </p>
	<%
	/* 데이터 수정해서 집어 넣기 위해 자바코드 사용함. setter 사용함 */
	/* 여기서 person은 위에서 id로 집어넣은 person임 */
	/* 그리고 20211219는 setProperty의 value랑 동일함 */
	person.setId(20211219);
	person.setName("홍길동");
	%>
	<!-- 해당 id가 useBean04와 03에 동시에 살아있음 -->
	<jsp:include page="useBean03.jsp" />
	
</body>
</html>
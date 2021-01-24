<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html에서 form 태그의 역할은 사용자가 입력한 데이터를 서버로 전송 -->
<!-- 사용자 입력을 직접 받는 태그는 input 태그 -->
	<form action="process.jsp" method="post">
		<label for="name">이 름 : </label>
		<!-- id,class는 CSS와 JS가 구분하기 위해 사용 -->
		<!-- form의 사용자 입력 데이터를 request 객체에 담아 전송 시 서버에서 알아볼 수 있는 구분자 역할을 input 태그의 name 속성이 한다. -->
		<!-- 보통 id 속성값과 name 속성값을 name으로 통일해서 사용한다. 아래와 같이. 그래야 알기 편하니까. -->
		<input type="text" id="name" class="name" name="name">
		<input type="submit" value="전송" >
		<!-- 원래 input 태그만 있는데, 시멘틱태그(의미부여)로 button 태그가 생겼다. -->
		<!-- <button type="submit">전송</button> -->
	</form>
</body>
</html>
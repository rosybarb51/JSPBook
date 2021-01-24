<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form06_process.jsp" name="member" method="post">
	<!-- <form action="form04_process.jsp" name="member" method="post"> -->
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="password">비밀번호 : </label>
		<input type="password" id="password" name="password"><br>
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name"><br>
		<label for="phone">연락처 : </label>
		<select id="phone1" name="phone1">
			<option value="010">010</option>
			<option value="011" selected>011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="019">019</option>
		</select>
		<input type="text" id="phone2" name="name2"> -
		<input type="text" id="phone3" name="name3">
		<br>
		
		<label for="gender">성별 : </label>
		<br>
		<input type="radio" id="male" name="gender" value="남성" checked>
		<label for="male">남성</label>
		<br>
		<input type="radio" id="female" name="gender" value="여성">
		<label for="female">여성</label>
		<br>
		<label for="hobby">취미 : </label>
		<input type="checkbox" name="hobby1" checked>독서
		<input type="checkbox" name="hobby2" >운동
		<input type="checkbox" name="hobby3" >영화
		<br>
		<textarea name="coment" cols=30 rows=5 placeholder="가입 인사를 입력해주세요."></textarea>
		<br>
		<button type="submit">가입하기</button>
		<button type="reset">다시쓰기</button>
	</form>
</body>
</html>
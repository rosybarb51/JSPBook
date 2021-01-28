<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function checkMember() {

	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	var regExpName = /^[가-힣]*$/;
	var regExpPasswd = /^[0-9]*$/;
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	var regExpEmail = /^[0-9a-zA-Z]([-_\,]?[0-9a-zA-Z]*@[0-9a-zA-Z]([-_\,]?[0-9a-zA-Z])*\[a-zA-Z]{2,3}$/i;
}
	var form = document.Member;

	var id = form.userid.value;
	var name = form.username.value;
	var passwd = form.userpw.value;
	phone form.phone.value + "-" + form.phone2.value + "-" + form.phone3.value;
	var email = form.email.value;

	if(!regExpId.test(id)) {
		alert("아이디는 문자로 시작해주세요.");
		form.userid.select();
	}
	
	if (!regExpName.test(name)) {
		alert("이름은 한글만 입력해주세요.");
		return;
	}

	if (!regExpPasswd.test(passw)) {
		alert("비밀번호를 숫자만 입력해주세요.");
		return;
	}

	if (!regExpPhone.test(phone)) {
		alert("연락처 입력을 확인해주세요.");
		return;
	}

	if (!regExpEmail.test(email)) {
		alert("이메일 입력을 확인해주세요.");
		return;
	}
	
	
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post"></form>
	<label for="userid">아이디 : </label>
	<input type="text" id="userid" name="userid"><br>
	<label for="userpw">비밀버호 : </label>
	<input type="password" id="userpw" name="userpw"><br>
	<label for="username">이름 : </label>
	<input type="text" id="username" name="username"><br>
	<label for="phone">연락처 : </label>
	<select id="phone1" name="phone1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
	</select> - <input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3">
	<label>이메일 : </label>
	<input type="text" name="email" id="email"><br><br>
	<button type="button" onclick="checkMember()">가입하기</button>
</body>
</html>
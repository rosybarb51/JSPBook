<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		/* document는 html 문서를 뜻함, 밑에 form을 불러온다 */
		var form = document.loginForm;
		if (form.id.value == "") {
			alert("아이디를 입력해 주세요.");
			form.id.focus();
			return false;
		} 
		else if (form.pw.value == "") {
			alert("비밀번호를 입력해 주세요.");
			form.pw.focus();
			return false;
		}
		else {
			form.submit();
		}
	} 
	/* 
	window.addEventListener("DOMContentLoaded", function() {
		var
		})
	 */
</script>
<body>
	<form name="loginForm" action="validaton02_process.jsp" method="post">
		<laberl for="id">아이디 : </laberl>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="button" id="btn_submit">전송</button>
	</form>
</body>
</html>
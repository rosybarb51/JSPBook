<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- action은 데이터를 들고 이동하는 페이지, method는 get과 post 두 가지 방식이 있다. get은 주소창에 들고가고, post는 암호화하는 방식 -->
<!-- form : 사용자가 입력한 데이터를 서버에 전송하는 역할 -->
<!-- 만약에 form 태그 밖에 input 태그를 해서 사용자 입력을 받아서 submit 버튼을 눌러도, 밖에 있는 것은 전송할 수 없다. -->
	<form action="request01_process.jsp" method="post">
	<!-- label에 for을 쓰는 이유 : input 태그의 id 이름과 label의 이름을 똑같이 해주면, label을 선택해도 input을 선택한 효과를 주기때문에 for을 사용한다. -->
		<label for="userID">User ID : </label>
		<input type="text" id="userID" name="userID" >
		<br>
		<label for="userPW">User PW : </label>
		<input type="password" id="userPW" name="userPW">
		<br>
		<button type="submit">전송</button>
	</form>
	
	<form action="request03.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="email" name="email"><br>
		<button type="submit">request03으로 이동</button>
	</form>
</body>
</html>
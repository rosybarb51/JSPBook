<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
<!-- 사용자 입력 부분을 위해서 form 추가 -->
	<form action="session01_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for ="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="submit">전송</button>
	</form>
	
	<br><hr><br>
	
	<!-- 세션 내용 보여주려고 작성함. -->
	<%
	/* 세션 내용을 저장할 변수 */
	String id = null; 
	String pw = null;
	
	/* 해당 세션의 데이터가 존재 시 변수에 저장 */
	if (session.getAttribute("userID") != null) {
		/* 세션에 저장되는 데이터는 모두 Object 타입이다. */
		/* 그래서 세선에 저장된 내용은 타입 변환을 통해서 일반 변수에 저장 */
		/* 아래에서는 .toString()을 통해서 문자열로 변환해줬다. */
		/* Object는 클래스임, 자바는 모두 클래스로 이루어짐. toString은 Object 클래스의 메소드임. Object는 최상위 클래스임. */
		id = session.getAttribute("userID").toString();
	}
	
	if (session.getAttribute("userPW") != null) {
		pw = session.getAttribute("userPW").toString();
	}
	
	/* 화면 출력 */
	out.println("아이디 : " + id +"<br>");
	out.println("비밀번호 : " + pw);
	%>
	
	<!-- session01.jsp에 우리가 아이디와 패스워드를 저장하지 않았다, session01_process.jsp에 저장했다. 그런데 우리가 session01.jsp을 실행해서 보면 저장돼있다. session은 웹사이트 전체에 전역변수를 만들어준다고 생각하면된다. -->
	<!-- 내가 웹브라우저를 닫기 전까지 접속기록이 저장돼있다.  -->
	
</body>
</html>
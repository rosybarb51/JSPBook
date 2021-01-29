<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	if(userId.equals("admin") && userPw.equals("1234")) {
		/* cookie는 클래스타입이라서 new 키워드를 써서 쿠키를 생성한다, session과 사용법이 다르다  */
		Cookie cookieId = new Cookie("userID", userId);
		Cookie cookiePw = new Cookie("userPW", userPw);
		/* 다시 돌려주는 response 를 사용해서 addCookie에 값을 넣어서 돌려준다. */
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		out.println("쿠키 생성이 성공했습니다.<br>");
		out.println(userId + "님 환영합니다.");
	}
	else {
		out.println("쿠키 생성이 실패했습니다.");
	}
	%>
</body>
</html>
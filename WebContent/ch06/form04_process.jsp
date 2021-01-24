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
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	/* String hobby1 = request.getParameter("hobby1");
	String hobby2 = request.getParameter("hobby2");
	String hobby3 = request.getParameter("hobby3"); */
	String comment = request.getParameter("comment");
	%>
	
	<p>아이디 : <%= id %></p>
	<p>비밀번호 : <%= pw %></p>
	<p>이름 : <%= name %></p>
	<p>연락처 : <%= phone1 %> - <%= phone2 %> - <%= phone3 %></p>
	<p>성별 : <%= gender %></p>
	<%-- <p>취미 : <%= hobby1 %> <%= hobby2 %> <%= hobby3 %></p> --%>
	<p>취미 : 
	<!-- 취미 부분 배열 형식으로 적어준다.. 그런데 왜 나는 출력이 안되지 ㅠㅠ form01 실행했을 때 취미 부분 넘어가는 거 강사님꺼랑 비교해서 제대로 해보기 -->
	<%
	if (hobby != null) {
		for (int i = 0; i < hobby.length; i++) {
			out.println(" " + hobby[i]);
		}
	}
	%>
	
	<p>가입 인사 : <%= comment %></p>
</body>
</html>











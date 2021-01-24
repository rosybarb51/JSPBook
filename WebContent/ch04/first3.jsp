<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- first3에서 second3으로 실행제어를 넘기는데, 데이터도 같이 넘긴다. 데이터를 넘길 때 이름도 정해줌. -->
<!-- 그래서 받는 파일에서 getParameter("이름")을 통해서 그 데이터를 받아온다.  -->
	<h3>이 파일은 first3.jsp 입니다.</h3>
	<jsp:include page="second3.jsp">
		<jsp:param value="<%=new java.util.Date() %>" name="date" />
	</jsp:include>
	<p>Java Server Page</p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<!-- include 로 해서 갔다가 돌아옴. -->
	<jsp:include page="param02_data.jsp">
	<!-- param의 매개변수 두 개 넣음 title, date -->
	<!-- 문자열을 넣어줬는데, 앞에서 설명했듯이 그냥 넘기면 안되고 인코딩해줘야함. 그래서 encode 해줌 -->
		<jsp:param name="title" value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각") %>' />
		<jsp:param name="date" value='<%=java.util.Calendar.getInstance().getTime() %>' />
	</jsp:include>
</body>
</html>
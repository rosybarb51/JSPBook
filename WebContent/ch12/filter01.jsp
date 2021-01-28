<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 여기서 실행하면 filter01_process.jsp로 가야하는데 AuthenFilter.java로 가서 필터 한 번 걸러주고 그 다음에 filter01.process.jsp로 가서 연산한다. -->
<!-- 예를 들면 게임에서 우리가 욕을 하면 필터로 한 번 걸러서 욕이 바로 나오지 않고 욕설에 해당하는 문자를 *등으로 바꾸거나 삭제해서 나오게 함 -->
	<form action="filter01_process.jsp" method="post">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name"><br>
		<button type="submit">전송</button>
	</form>
</body>
</html>
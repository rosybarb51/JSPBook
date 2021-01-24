<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 책200p -->
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 이름</th>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		
		/* Enumeration 은 배열이라고 생각하면 됨. 배열은 아니라서 사용법이 살짝 다름 */
		/* request 객체가 가지고 있는 모든 파라미터의 이름을 가져옴 */
		Enumeration paramNames = request.getParameterNames();
		
		/* 반복문을 통해서 배열에 저장된 모든 내용을 확인 */
		/* 배열에 남은 내용이 없을 때까지 반복 실행하면서 확인->hasMorElements가 해준다. 이름만 가지고 있는 배열 */
		while (paramNames.hasMoreElements()) {
			/* 배열에 저장된 데이터를 하나 출력해서 name에 넣고 */
			String name = (String) paramNames.nextElement();
			out.println("<tr><td>" + name + "</td");
			/* 출력된 name(받아온 이름)을 가지고 request 객체에서 실제 값, 데이터를 하나 출력함. 실제 값을 가지고 오는 것은 getParameter */
			String paramValue = request.getParameter(name);
			out.println("<td>" + paramValue + "</td></tr>");
		}
		%>
	</table>
</body>
</html>












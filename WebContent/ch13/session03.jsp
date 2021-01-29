<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Enumeration 사용하기 위해 임포트함 -->
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 세션명 저장 변수와 세션값 저장 변수 */
	String name;
	String value;
	
	/* Enumeration 사용하려면 클래스 선언해야함 */
	/* 일종의 배열 */
	/* getAttributeNames : 모든 세션 속성명 불러오기 */
	Enumeration en = session.getAttributeNames();
	
	int i = 0;
	
	/* hasMoreElements :  남아있는 데이터 존재 여부 */
	while (en.hasMoreElements()) {
		i++;
		
		/* nextElement : 가지고 있는 정보 한 개 출력 */
		/* 그런데 그 정보가 세션에 있던 애라서 Object 타입임, 그래서 문자형으로 변환 */
		name = en.nextElement().toString();
		
		value = session.getAttribute(name).toString();
		
		out.println("설정된 세션의 속성 이름은 [" + i + "] : " + name + "<br>");
		out.println("설정된 세션의 속성 값 [" + i + "] : " + value + "<br>");
	}
	%>
</body>
</html>




















<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>apache commons 라이브러리로 파일 업로드</title>
</head>
<body>
	<%
	String fileUploadPath = "C:\\java102\\upload";
	
	DiskFileUpload upload = new DiskFileUpload();
	
	/* request 내장 객체에서 multipart/form-data 방식의 데이터를 모두 가져옴,반환방식이 List 타입, 일반 배열은 아니기 때문에 그대로 배열처럼 사용은 못한다. 그래서 밑에 Iterator(반복자)을 써서 첫 버 ㄴ째 요소 부터 끝 요소까지 전부 다 출력하기 쉽게 만듬.(for 문 이용한것 처럼..) */
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	while (params.hasNext()) {
		FileItem fileItem = (FileItem) params.next();
		
		/* 가져온 request 의 데이터가 파일인지 일반 데이터인지 확인 */
		if (!fileItem.isFormField()) {
			/* 업르드된 파일 이름 가졍괴 */
			String  fileName = fileItem.getName();
			/* substring : 지정된 index에서 부터 끝까지의 문자여을 잘라내어 반환 */
			/* lastIndexOf : 지정된 문자열을 해당 문자열의 끝에서부터 검색하여 문자열이 있은 index 위치를 알려줌 */
			/* 경로를 제외한 파일 이름만 가져옴 */
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			File file = new File(fileUploadPath + "/" + fileName);
			/* 지정된 경로 파일을 저장 */
			fileItem.write(file);
		}
	}
	%>
</body>
</html>










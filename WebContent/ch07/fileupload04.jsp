<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 이 파일은 실행 시, 저장 폴더에 해당 파일이 없어야 오류가 안 남.. -->
	<form method="post" enctype="multipart/form-data" action="fileupload04_process.jsp" name="fileForm">
		<label for="name">이 름 : </label>
		<input type="text" name="name" id="name"><br>
		<label for="subject">제 목 : </label>
		<input type="text" name="subject" id="subject"><br>
		<label for="file">파 일 : </label>
		<input type="file" name="filename" id="filename"><br><br>
		<button type="submit">파일 업로드</button>
	</form>
	
</body>
</html>
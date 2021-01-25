<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 업로드 된 파일을 다루기 위한 기본 라이브러리 -->
<%@ page import="java.util.*" %>
<!-- io에서 file을 사용함 -->
<%@ page import="java.io.*" %>

<!-- 파일 업로드를 위한 외부 라이브러리  -->
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%
/* 파일 업로드를 위해서 cos.jar 라이브러리를 통해서 MultipartRequest 클래스 객체를 생성 */
/* request 객체를 받아서 그대로 사용할 수 있게끔 만들어줌 파일 업로드 시 저장할 장소, 전체 용량(바이트로 따진다. 1024라고 한 이유는 10진수로 1000임. 2의 10승을 하면 1024나옴.1byte * 1000 * 1000 * 5 = 1kbyte * 1kbyte * 5 = 1mbyte * 5 => 즉 5메가 짜리 파일 올릴 수 있다.) */
/* 5 * 1024 * 1024 : 1byte 가 기본 크기이므로 1 * 5 * 1024 * 1024 가 되어서 최대 5메가 바이트가 됨  */
/* new DefaultFileRenamePolicy() : 기존의 파일이 있을 경우 새이름으로 파일을 저장*/
MultipartRequest multi = new MultipartRequest(request, "C:\\java102\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

/* multipart 타입으로 전송된 request 객체의 모든 파라미터 이름을 불러옴 */
Enumeration<String> params = multi.getParameterNames();

/* 불러온 파라미터가 존재할 경우 while 문을 실행함 */
/* hasMoreElements() : 남아 있는 객체가 있느냐 */
while (params.hasMoreElements()) {
	/* 현재 파라미터의 다음 파라미터를 불러옴 */
	/* 실제 데이터를 불러 온 것이 아니라 이름만 불러온 것이니까 혹시 몰라서 String으로 형변환해줌 */
	String name = (String) params.nextElement();
	/* 파라미터 불러와서 그 값을 불러옴 */
	String value = multi.getParameter(name);
	/* 화면에 출력 시켜 줌 */
	out.println(name + " = " + value + "<br>");
}
out.println("-------------------------------<br>");

/* 파일 여러 개가 왔을 수도 있으니까 getFileNames()로 불러옴 */
/* multipart 타입으로 전송된 request 객체 중 파일 이름을 전부 불러옴 */
/* Enumeration : 배열 같은 애,, 하나하나 다 줄 세워서.. */
Enumeration files = multi.getFileNames();

while (files.hasMoreElements()) {
	/* 현재 위치 다음의 파일 이름을 불러옴 */
	String name = (String) files.nextElement();
	/* getFilesystemName() : 사용자가 지정하는 파일 이름 */
	String filename = multi.getFilesystemName(name);
	/* getOriginalFileName() : 실제로 업로드된 실제 파일 이름 */
	String original = multi.getOriginalFileName(name);
	/* 파일 유형 확인 - 시스템에서 자동으로 해줌 */
	String type = multi.getContentType(name);
	/* getFile : 실제로 업로드된 파일 */
	File file = multi.getFile(name);
	
	out.println("요청 파라미터 이름 : " + name + "<br>");
	out.println("실제 파일 일음 : " + original + "<br>");
	out.println("저장 파일 이름 : " + filename + "<br>");
	out.println("파일 콘텐츠 유형 : " + type + "<br>");
	
	if (file != null) {
		out.println(" 파일 크기  : " + file.length());
		out.println("<br>");
	}
}
%>


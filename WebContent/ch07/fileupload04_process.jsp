<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
    
<%@ page import="org.apache.commons.fileupload.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Commons-FileUpload를 이용한 파일 업로드</title>
</head>
<body>
	<%
	/* 파일 저장 경로 */
	String filepath = "C:\\java102\\upload";
	
	/* 최신 파일 업로드 방식 */
	String fileUploadPath = "C:\\java102\\upload";
	
	File path = new File(fileUploadPath);
	/* DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(4096);
	factory.setRepository(path);
	
	ServletFileUpload upload = new ServletFileUpload(factory);
	List<FileItem> items = upload.parseRequest(request);
	Iterator<FileItem> iter = items.iterator();
	
	while (iter.hasNext()) {
		FileItem fileItem = (FileItem)iter.next();
		
		if (fileItem.isFormField()) {
			String name = fileItem.getFieldName();
			String value = fileItem.getString("utf-8");
			out.println(name + " = " + value + "<br>");
		}
		else {
			String fileFieldName = fileItem.getFieldName();
			String fileName = fileItem.getName();
			String contentType = fileItem.getContentType();
			
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = fileItem.getSize();
			File file = new File(path + "/" + fileName);
			fileItem.write(file);
			
			out.println("---------------------<br>");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
			out.println("저장 파일 이름 : " + fileName + "<br>");
			out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize);
		}
	} */
	
	
	/* DiskFileUpload upload = new DiskFileUpload(); */
	
	/* 파일 최대 크기 설정 */
	/* upload.setSizeMax(1000000); */
	/* 버퍼 메모리 설정 - 4키로바이트로 잡아둠 */
	/* upload.setSizeThreshold(4096); */
	/* 파일 저장 위치 설정. 이걸 해야지만 실제 저장 위치 설정된다. */
	/* upload.setRepositoryPath(path);
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator(); */
	
	/* 다음 요소가 존재 시 while 문 실행 */
	/* while (params.hasNext()) { */
		/* 다음 요소를 하나 꺼내와서 FileItem 클래스 타입의 변수에 대입 */
		/* FileItem item = (FileItem) params.next(); */
		
		/* 가져온 요소가 파일인지 일반 데이터인지 확인 */
		/* if (item.isFormField()) { */
			/* request 내장 객체의 파라미터 이름을 가져오기 */
		/* 	String name = item.getFieldName(); */
			/* 해당 파라미터의 데이터 가져오기 */
		/* 	String value = item.getString("utf-8");
			out.println(name + "=" + value + "<br>");
		}
		else { */
			/* 파라미터의 이름을 가져옴 */
			/* String fileFieldName = item.getFieldName(); */
			/* 파일의 경로를 포함한 이름을 가져옴 */
			/* String fileName = item.getName(); */
			/* 파일의 타입을 확인 */
			/* String contentType = item.getContentType(); */
			
			/* 지정한 인덱스부터 맨끝까지 글자를 잘라서 가져옴. 매개변수를 lastIndexOf 해서 뒤에서부터 이 글자가 몇 번째에 있는지 나타냄 */
			/* 위에서 받아 온 경로 및 파일 이름 중 파일 이름만 가져옴 */
			/* fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); */
			/* 파일사이즈 가져옴 */
		/* 	long fileSize = item.getSize(); */
			/* 서버에 저장될 파일 전체 경로 설정 */
		/* 	File file = new File(path + "/" + fileName); */
			/* 파일을 지정된 위치에 저장 */
	/* 		item.write(file);
			
			out.println("---------------------------<br>");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
			out.println("저장 파일 이름 : " + fileName + "<br>");
			out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize);
		}
	} */
	%>
</body>
</html>



















<%@page import="java.util.Locale"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.ZoneId"%>
<%@page import="java.time.Instant"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String path = application.getRealPath("/files");
	
	File dir = new File(path);
	File[] list = dir.listFiles();
	
	Arrays.sort(list, (o1, o2) -> o1.getName().compareTo(o2.getName()));

%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		#attach1 {
			display: block;
		}
	</style>
	<script src="https://kit.fontawesome.com/3d6aabb553.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<h1>자료실 <small>탐색기</small></h1>
	
	<hr>
	
	<table id="tbl1">
		<tr>
			<th>파일명</th>
			<th>크키</th>
			<th>수정된 날짜</th>
			<th>삭제</th>
		</tr>
		<% 
			for(File file : list){
				
				String extension = file.getName().substring(file.getName().lastIndexOf(".") + 1);
				
				if (extension.equals("doc")) {
					extension = "doc.png";
				} else if (extension.equals("gif")) {
					extension = "gif.png";
				} else if (extension.equals("js")) {
					extension = "js.png";
				} else if (extension.equals("html")) {
					extension = "html.png";
				} else if (extension.equals("mp4")) {
					extension = "mp4.png";
				} else if (extension.equals("pdf")) {
					extension = "pdf.png";
				} else if (extension.equals("png")) {
					extension = "png.png";
				} else if (extension.equals("sql")) {
					extension = "sql.png";
				} else if (extension.equals("txt")) {
					extension = "txt.png";
				} else if (extension.equals("xls")) {
					extension = "xls.png";
				} else if (extension.equals("xml")) {
					extension = "xml.png";
				} else if (extension.equals("zip")) {
					extension = "zip.png";
				} else {
					extension = "other.png";
				}
				
				String size = "";
				
				if (file.length() < 1024) {
					size = String.format("%,dB", file.length());
				} else if (file.length() < 1024 * 1024) {
					size = String.format("%,.1fKB", file.length() / 1024.0);
				} else if (file.length() < 1024 * 1024 * 1024) {
					size = String.format("%,.1fMB", file.length() / 1024.0 / 1024.0);
				}
				
				LocalDateTime time = LocalDateTime.ofInstant(Instant.ofEpochMilli(file.lastModified()), ZoneId.systemDefault());
				time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd (E) a h:m", Locale.KOREAN));
				
			}
		%>
	</table>
	
	<hr>
	
	<form method="POST" action="ex19p_ok" enctype="multipart/form-data"></form>
		파일: <input type="file" name="attach1" id="attach1">
		<button src="<i class="fa-solid fa-paperclip"></i>">업로드</button>
	</form>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>











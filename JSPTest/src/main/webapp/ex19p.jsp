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
		tbl1 th:nth-child(1) { width: auto; }
		#tbl1 th:nth-child(2) { width: 100px; }
		#tbl1 th:nth-child(3) { width: 220px; }
		#tbl1 th:nth-child(4) { width: 40px; }
		
		#tbl1 td:nth-child(1) { text-align: left; }
		#tbl1 td:nth-child(1) img { width: 18px; float: left; margin-right: 5px; }
		#tbl1 td:nth-child(4) span { cursor: pointer; }
	</style>
	<script src="https://kit.fontawesome.com/3d6aabb553.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<h1>자료실 <small>탐색기</small></h1>
	
	<table id="tbl1">
		<tr>
			<th>파일명</th>
			<th>크기</th>
			<th>수정된 날짜</th>
			<th>삭제</th>
		</tr>
		<% 
			for(File file : list){
				if(file.isFile()){
				
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
					String lastModified = time.format(DateTimeFormatter.ofPattern("yyyy-MM-dd (E) a h:m", Locale.KOREAN));
					
				%>
				<tr>
					<td><img src="icon/<%= extension %>"><%= file.getName() %></td>
					<td><%= size %></td>
					<td><%= lastModified %></td>
					<td><span onclick="del('<%= file.getName() %>')"><i class="fa-regular fa-trash-can"></i></span></td>
				</tr>
				<% }} %>
	</table>
	
	<hr>
	
	<form method="POST" action="ex19p_ok.jsp" enctype="multipart/form-data">
		<div>파일: <input type="file" name="attach1" id="attach1"></div>
		<div><button><i class="fa-solid fa-paperclip"></i>업로드</button></div>
	</form>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		function del(filename) {
			
			if(confirm('delete?')){
				
				location.href = 'ex19p_del.jsp?filename=' + filename;
				
			}
			
		}
	</script>
</body>
</html>











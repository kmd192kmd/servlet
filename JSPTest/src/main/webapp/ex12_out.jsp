<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		
	</style>
</head>
<body>
	<!-- ex12_out.jsp -->
	<h1>구구단</h1>
	
	<% int dan = 5; %>
	
	<h2>스크립틀릿 + 표현식</h2>
	
	<% for (int i=1; i<=9; i++) { %>
	<div><%= dan %> x <%= i %> = <%= dan * i %></div>
	<% } %>
	
	<h2>out 객체</h2>
	
	<%
	
		//out == PrintWriter	
		for (int i=1; i<=9; i++) {
			out.println(String.format("<div>%d x %d = %d</div>"
										, dan, i, dan * i));
		}
	
	%>
	
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>







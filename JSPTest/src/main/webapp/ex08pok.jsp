<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	int width = Integer.parseInt(request.getParameter("width"));
	int height = Integer.parseInt(request.getParameter("height"));
	String txt = request.getParameter("txt");
	String bgColor = request.getParameter("bgColor");
	String fontColor = request.getParameter("fontColor");
	int fontSize = Integer.parseInt(request.getParameter("fontSize"));
	int buttonNum = Integer.parseInt(request.getParameter("buttonNum"));
	int margin1 = Integer.parseInt(request.getParameter("margin1"));
	int margin2 = Integer.parseInt(request.getParameter("margin2"));
	String icon = request.getParameter("icon");
	int borderWidth =  Integer.parseInt(request.getParameter("borderWidth"));
	String borderColor = request.getParameter("borderColor");
	String borderStyle = request.getParameter("borderStyle");
	int radius = Integer.parseInt(request.getParameter("radius"));
	String sel1 = request.getParameter("sel1");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<script src="https://kit.fontawesome.com/3d6aabb553.js"></script>
	<style>
		
		.button {
			width: <%= width %>px;
			height: <%= height %>px;
			background-color: <%= bgColor %>;
			color: <%= fontColor %>;
			font-size: <%= fontSize %>px;
			margin: <%= margin1 %>, <%= margin2 %>;
			<% if(sel1.equals("n")) { %>
				border: 0;
			<% } else { %>
			border: <%= borderWidth%>px <%=borderStyle%> <%= borderColor%>;
			border-radius: <%= radius %>px;
			<% } %>; 
		}
		.button {
			padding-left: 0px;
		}
		.button::before {
			content: none;
		}
		
	</style>
</head>
<body>
	
	<h1>결과</h1>
	
	<table class="vertical">
		<tr><th>버튼</th></tr>
		<tr><td>
			<% for(int i = 0; i< buttonNum; i++){ %>
				<button class="button">
				<% if(!icon.equals("none")) {%>
					<span class="<%= icon %>"></span>
					<% } %>
					<%= txt %>
				</button>
			<% } %>
			</td></tr>
	</table>
	<form method="POST" action="ex08p.jsp">
		<input type="submit" value="돌아가기">
	</form>
	<hr>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>











<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.java.MyUtil"%>
    
<%


	//자바 영역 > 이 영역이 어떤 영역? > 어떤 메서드의 {}
	//- 모든 스클립틀릿 영역은 하나의 {} 영역안에 포함된다.
	
	//지역 변수 vs 멤버 변수 > ? 지역변수
	int a = 10;
	
	/*
	public void test() {
		
	}
	*/
	
	/*
	class Test {
		
	}
	*/
	
	System.out.println(sum(10, 20));

%>
<%!
	//다른 영역 > 클래스 영역
	public int b = 20; //사용 안함

	public int sum(int a, int b) {
	
		return a + b;
	}

%>
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
	<!-- ex04_declare.jsp -->
	
	<%
	
		System.out.println(a);
	
	%>
	
	<div><%= sum(30, 40) %></div>
	
	<hr>
	
	<%
	
		MyUtil util = new MyUtil();
	
	%>
	<div><%= util.sum(50, 60) %></div>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>







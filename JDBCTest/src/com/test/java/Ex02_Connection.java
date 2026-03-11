package com.test.java;

import java.sql.Connection;
import java.sql.DriverManager;

public class Ex02_Connection {
	
	public static void main(String[] args) {
		
		//Ex02_Connection.java
		
		Connection conn = null;
		
		//연결 문자열(Connection String)
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "server";
		String pw = "java1234";
		
		try {
			
			//드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//Class.forName("com.mysql.cj.jdbc.Driver");
			
			//DB 접속(JDBC)
			//- Oracle
			//- MySQL
			//- MS-SQL
			conn = DriverManager.getConnection(url, id, pw); //접속 완료
			
			System.out.println(conn.isClosed()); //false
			
			//SQL 실행
			
			//접속 종료
			conn.close();
			
			System.out.println(conn.isClosed()); //true
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}

























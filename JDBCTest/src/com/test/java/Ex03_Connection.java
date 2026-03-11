package com.test.java;

import java.sql.Connection;

public class Ex03_Connection {
	
	public static void main(String[] args) {
		
		//Ex03_Connection.java
		DBUtil util = new DBUtil();
		Connection conn = null;
		
		try {
			
			conn = util.open();
			//conn = util.open("localhost", "hr", "java1234");
			
			System.out.println(conn.isClosed());
			
			conn.close();
			
			System.out.println(conn.isClosed());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}








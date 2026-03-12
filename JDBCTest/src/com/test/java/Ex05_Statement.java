package com.test.java;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Ex05_Statement {
	
	public static void main(String[] args) {
		
		//Ex05_Statement.java
		//m1();
		//m2();
		//m3();
		//m4();
		
		m5();
		
	}//main

	private static void m5() {
		
		//hr.tblInsa + select문
		//1. 어떤 부서들이 있는 출력
		//2. 사용자 > 부서 선택
		//3. 해당 부서의 모든 직원 명단 출력(num, name, jikwi, basicpay)
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		Scanner scan = new Scanner(System.in);
		
		try {
			
			conn = util.open("localhost", "hr", "java1234");
			stat = conn.createStatement();
			
			//SQL
			String sql = "select distinct buseo from tblInsa order by buseo asc";
			
			rs = stat.executeQuery(sql);
			
			System.out.println("[부서명]");
			System.out.println("========");
			
			while (rs.next()) {
				System.out.println(rs.getString("buseo"));
			}
			
			rs.close(); //부서 테이블 > 출력 > 임무 완수
			
			
			System.out.println();
			System.out.print("부서명: ");
			String buseo = scan.nextLine();
			
			
			//두번째 쿼리
			sql = "select num, name, jikwi, basicpay from tblInsa where buseo = '" + buseo + "'";
			
			rs = stat.executeQuery(sql);

			System.out.println("[번호]\t[이름]\t[직위]\t[급여]");
			
			while (rs.next()) {
				System.out.printf("%s\t%s\t%s\t%,d원\r\n"
								, rs.getString("num")
								, rs.getString("name")
								, rs.getString("jikwi")
								, rs.getInt("basicpay"));				
			}
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		
		
	}

	private static void m4() {
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			
			conn = util.open();
			stat = conn.createStatement();
			
			//SQL
			//String sql = "select name from tblAddress";
			String sql = "select * from tblAddress";
			
			rs = stat.executeQuery(sql);
			
			while (rs.next()) {
				String name = rs.getString("name");
				System.out.println(name);
				
				int age = rs.getInt("age");
				System.out.println(age);
				
				String address = rs.getString("address");
				System.out.println(address);
				System.out.println();
			}
			
			rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}

	private static void m3() {
		
		//다중값 반환
		//- 1행 N열
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			
			conn = util.open();
			stat = conn.createStatement();
			
			//SQL
			String sql = "select * from tblAddress where seq = 12";
			
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String address = rs.getString("address");
				
				System.out.println(name);
				System.out.println(age);
				System.out.println(address);
				
			}
			
			rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	private static void m2() {
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("번호: ");
		String seq = scan.nextLine();
		
		try {
			
			conn = util.open();
			stat = conn.createStatement();
			
			//SQL
			String sql = "select name from tblAddress where seq = " + seq;
					
			rs = stat.executeQuery(sql);
			
			//결과셋에 레코드가 유효한지 검사
			if (rs.next()) {
				
				String name = rs.getString("name");
				System.out.println(name);
				
			} else {
				System.out.println(seq + "번 데이터 없음.");
			}
			
			rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}

	private static void m1() {
		
		//결과셋 > 단일값
		//- 1행 1열
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			
			conn = util.open();
			stat = conn.createStatement();
			
			//SQL
			String sql = "select count(*) as cnt from tblAddress";
			
			rs = stat.executeQuery(sql);
			
			//커서 전진
			rs.next();
			
			//커서가 가리키는 레코드의 원하는 컬럼값을 가져오기
			//- rs.getXXX()
			//int count = rs.getInt(1); //컬럼 순서
			//String count = rs.getString(1);
			
			int count = rs.getInt("cnt"); //컬럼명(***)
			
			System.out.println(count);
			
			
			rs.close();
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		/*
		
		DBUtil util = new DBUtil();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			
			conn = util.open();
			stat = conn.createStatement();
			
			//SQL
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		*/
		
	}

}
























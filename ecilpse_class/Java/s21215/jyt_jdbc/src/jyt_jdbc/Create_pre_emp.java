package jyt_jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class Create_pre_emp {
	
	public static void main(String[] args) throws Exception {
		
		// 1. 드라이버 로드
		Class.forName("oracle.jdbc.OracleDriver");
		
		// 2. 연결 객체 생성
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		Connection con = DriverManager.getConnection(url, "sw212", "1234");
		
		// 3. 준비상태 객체 생성
		String sql = "insert into pc_emp values(?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("사원추가 페이지입니다.");
		
		System.out.print("사원번호(name)? > ");
		pstmt.setString(2, sc.next());
		
		System.out.print("생년월일(birth-YYYY-MM-DD)? > ");
//		Date date = Date.valueOf(sc.next());
		pstmt.setInt(4, sc.nextInt());
		
		System.out.print("연락처(tel)? > ");
		pstmt.setInt(5, sc.nextInt());
		
		System.out.print("주소(address)? > ");
		pstmt.setString(6, sc.next());
		
		pstmt.setInt(1, 5);
		pstmt.setString(3, "slave");
		pstmt.setInt(7, 100);
		
		// 4. 발사버튼
		System.out.println(pstmt.executeUpdate());
		
	}
}

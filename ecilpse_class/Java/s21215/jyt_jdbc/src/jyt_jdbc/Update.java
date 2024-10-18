package jyt_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Update {
	
	public static void main(String[] args) throws Exception {
		
//		1. 드라이버 객체 로드
		Class.forName("oracle.jdbc.OracleDriver");
		
//		2. 연결객체 객체 생성
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		Connection conn = DriverManager.getConnection(url, "sw212", "1234");
		
//		3. 준비상태 객체 생성
		String Query = " update pc_menu "
				+ " set menu_price = ? "
				+ " where menu_no = ? ";
		PreparedStatement pstmt = conn.prepareStatement(Query);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("수정할 메뉴 번호를 선택하세요. ");
		int menu_no = sc.nextInt();
		pstmt.setInt(2, menu_no);
		
		System.out.println("수정할 금액을 입력해주세요. ");
		int change_price = sc.nextInt();
		pstmt.setInt(1, change_price);
		
//		4. 실행(발사버튼!!)
		pstmt.executeUpdate();
		
	}
}

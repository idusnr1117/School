package jyt_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Create_pre {

	public static void main(String[] args) throws Exception {
		
		// 1. 드라이버 로드
		Class.forName("oracle.jdbc.OracleDriver");
						
		// 2. Connection 객체 만들기
		final String url = "jdbc:oracle:thin:@localhost:1521:xe";
		Connection con = DriverManager.getConnection(url, "sw212", "1234");
						
		// 3. Statement 객체 만들기
		Statement st = con.createStatement();
				
		// 4. ResultSet 객체 만들기
		ResultSet rs = st.executeQuery("select max(menu_no) from pc_menu");
		rs.next();
		
		Scanner sc = new Scanner(System.in);
		
		int menu_no = rs.getInt(1) + 1;
		
		//메뉴 번호를 가져오는 과정
		
		String sql = "insert into pc_menu values(?, ?, ?, ?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setInt(1, menu_no);
		
		System.out.printf("메뉴 추가 페이지입니다. %d번째 메뉴를 입력합니다.\n", menu_no);
		
		System.out.print("메뉴 종류를 입력하세요 >>> ");
		String menu_option = sc.nextLine();
		pstmt.setString(2, menu_option);
		
		System.out.print("메뉴 이름를 입력하세요 >>> ");
		String menu_name = sc.nextLine();
		pstmt.setString(3, menu_name);
		
		System.out.print("메뉴의 가격을 입력하세요 >>> ");
		int menu_price = sc.nextInt();
		pstmt.setInt(4, menu_price);
		
		int result = pstmt.executeUpdate();
		System.out.println(result);
		
	}
}

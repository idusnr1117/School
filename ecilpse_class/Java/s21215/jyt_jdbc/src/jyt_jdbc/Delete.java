package jyt_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class Delete {
		
	public static void main(String[] args) throws Exception {
			
	//		1. 드라이버 객체 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
	//		2. 연결객체 객체 생성
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			Connection conn = DriverManager.getConnection(url, "sw212", "1234");
			
	//		3. 준비상태 객체 생성
			String select_query = "select menu_name from pc_menu";
			PreparedStatement pstmt = conn.prepareStatement(select_query);
			
			ResultSet rs = pstmt.executeQuery();
			
			int cnt = 0;
			
			Scanner sc = new Scanner(System.in);
			
//			1. pc_menu 꺼내오기
			while(rs.next())
			{
				cnt++;
				System.out.printf("%d.%-6s\t", cnt, rs.getString(1));
				if(cnt % 5 == 0) System.out.println();
			}
			
//			2. 삭제할 메뉴 선택받기
			System.out.print("삭제할 메뉴를 선택하세요. >");
			int choice = sc.nextInt();
			
			String query2 = "delete from pc_menu where menu_no = ?";
			
			pstmt = conn.prepareStatement(query2);
			pstmt.setInt(1, choice);
			
			
			int result = pstmt.executeUpdate();
			
			if (result == 1)
			{
				System.out.println(choice + "번 삭제가 정상적으로 진행되었습니다.");
			}
		}
}

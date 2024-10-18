package jyt_jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class Jdbc_main {
	
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) throws Exception {
		
		Connection conn = DB_connect.play_connection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean 진행 = true;
		
		System.out.println("sw212 PC방에 오신걸 환영입니다.");
		
		while (진행)
		{
			// 테이블 선택 (사용자에게 입력 -> 해당 테이블을 선택)
			// 테이블이라는 변수에 테이블명을 저장
			// ResultSet -> 컬럼명, 행의 갯수 등등의 정보는 알 수 없다.
			// ResultSetMataData
			
			// 이번 예제에서는 테이블을 정해놓고 간다.
			
			String table = "pc_menu";
			System.out.println("테이블 : " + table);
			
			System.out.println("메뉴를 선택하세요.");
			System.out.println("(1)Create (2)Read (3)Update (4)Delete (5)Exit > ");
			int 선택 = sc.nextInt();
			
			switch(선택)
			{
			case 1:
				Create(conn, pstmt, rs, table);
				break;
			case 2:
				Read(conn, pstmt, rs, table);
				break;
			case 3:
				Update(conn, pstmt, rs, table);
				break;
			case 4:
				Delete(conn, pstmt, rs, table);
				break;
			case 5:
				진행 = Exit(conn, pstmt, rs, table);
				break;
			default:
				System.out.println("허용되지 않은 값 입니다. 다시 입력해주세요.");
				continue;
			}
		}
		
	}
	
	private static void Create(Connection conn, PreparedStatement pstmt , ResultSet rs, String table) throws Exception
	{
		
		// menu_no는 기본키 -> 자동생성 해주자
		// 테이블명은 prepareStatement로 넣어줄 수 없다.
		String sql1 = "select count(*) from " + table;
		pstmt = conn.prepareStatement(sql1);
		rs = pstmt.executeQuery();
		rs.next();
		
		System.out.println(rs.getString(1));
		int index = rs.getInt(1) + 1;
		
		String sql2 = "insert into " + table + " values(?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql2);
		pstmt.setInt(1, index);
		System.out.printf("%d번째 메뉴입니다.\n", index);
		
		// type 입력받기
		System.out.printf("메뉴 type : ");
		String type = sc.next();
		pstmt.setString(2, type);
		
		// menu_name 입력받기
		System.out.printf("메뉴 name : ");
		String menu_name = sc.next();
		pstmt.setString(3, menu_name);
		
		// menu_price 입력받기
		System.out.printf("메뉴 price : ");
		int menu_price = sc.nextInt();
		pstmt.setInt(4, menu_price);
		
		pstmt.executeUpdate();
		
	}
	
	private static void Read(Connection conn, PreparedStatement pstmt, ResultSet rs, String table) throws Exception
	{
		String sql = "select * from " + table;
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		System.out.println("메뉴 번호 | 메뉴 타입 | 메뉴명 | 메뉴 가격");
		while (rs.next())
		{
			int menu_no = rs.getInt(1);
			String menu_type = rs.getString(2);
			String menu_name = rs.getString(3);
			int menu_price = rs.getInt(4);
			System.out.printf("   %d        %s     %s     %d\n",
					menu_no, menu_type, menu_name, menu_price);
		}
		System.out.println("=================================");
		
		
	}
	
	private static void Update(Connection conn, PreparedStatement pstmt, ResultSet rs, String table) throws Exception
	{
		String sql = "insert into ? values(?, ?, ?, ?)";
	}
	
	private static void Delete(Connection conn, PreparedStatement pstmt, ResultSet rs, String table) throws Exception
	{
		String sql = "insert into ? values(?, ?, ?, ?)";
	}
	
	private static boolean Exit(Connection conn, PreparedStatement pstmt, ResultSet rs, String table) throws Exception
	{
		System.out.println("Bye~");
		return false;
	}
	
}

package s21215_00;

public class Test_format {
	
	public static void main(String[] args) {
		
		System.out.printf("이름 : %s", "우리들 ");
		System.out.printf("학번 : %d\n", 21215);
		
		System.out.printf("이름 : %s" + " 학번 : %d" + " 전화번호 : %s\n", "우리들,", 21215, "010-1234-5678");
		
		System.out.printf("이름 : %s" + " 전화번호 : %s" + " 학번 : %d", "우리들,", "010-1234-5678", 21215);
		
		
	}
}

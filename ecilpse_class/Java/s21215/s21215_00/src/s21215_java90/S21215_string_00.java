package s21215_java90;

public class S21215_string_00 {
	
	public static void main(String[] args) {
		
//		String s1 = "우리는 성일정보고 소프트웨어 개발과입니다."
		String s1 = "123456-8901234 주민등록번호";
		
		int len = s1.length();
		
		String s2 = s1.substring(0, 6);
		String s3 = s1.substring(7, 14);
		String s4 = s1.substring(15);
		
		System.out.println("--- substring() 메소드의 인덱스 활용 ---");
		System.out.println("s1 : " + s1 + " 길이 : " + len);
		System.out.println("s2 : " + s2 + " 길이 : " + s2.length());
		System.out.println("s3 : " + s3 + " 길이 : " + s3.length());
		System.out.println("s4 : " + s4 + " 길이 : " + s4.length());
		
		System.out.println("--- substring() 메소드의 인덱스 활용 ---");
		
		for (int i = 0; i < 1; i++) System.out.println(s1.substring(i));
		
	}
}

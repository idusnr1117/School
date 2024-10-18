package s21215_java20;

public class Chap_01 {
	
	public static void main(String[] args) {
		
		Student stu = new Student();
		
		stu.pub();
		stu.pro();
		stu.def();
//		stu.pri(); private라 접근이 안된다.
		stu.show_private(4, 5); // 그래서 show_private를 만들어서 접근해줬다.
		
	}
}

package s21215_java90;

public class S21215_wrapper_01 {
	
	public static void main(String[] args) {
		
		// 기본 박싱	
		System.out.println("---기본 박싱 및 언박싱 ---");
		Integer is1 = new Integer(127);		
		Integer is2 = new Integer("127");
		
		// 언박싱
		int si1 = is1.intValue();
		int si2 = is2.intValue();
		
		
		System.out.printf("기본방식is1 : %d ㅣ 언박싱si1 : %d\n", is1, si1);
		System.out.printf("기본방식is2 : %d ㅣ 언박싱si2 : %d\n", is2, si2);
		
		System.out.printf("기본방식is1 : %d ㅣ 언박싱si1 : %d\n", System.identityHashCode(is1), System.identityHashCode(si1));
		System.out.printf("기본방식is2 : %d ㅣ 언박싱si2 : %d", System.identityHashCode(is2), System.identityHashCode(si2));
		
	}

}

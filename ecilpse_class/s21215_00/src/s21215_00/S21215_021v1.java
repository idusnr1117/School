package s21215_00;

public class S21215_021v1 {
	
	public static void main(String[] args) {
		
		double pi = 3.141592;
		
//		결과1 : 3.141592
//		System.out.println(Math.round(pi));
//		결과2 : 3.141592
//		System.out.println(pi);
//		결과3 : 3141.592
//		System.out.println(pi * 1000);
//		결과4 : 3142
//		System.out.println((int)(pi * 1000));
//		결과5 : 3.142
//		System.out.println((double)Math.round(pi * 1000) / 1000);
//		결과6 : 3.141
//		System.out.println(("" + pi).substring(0, 5));
		
//		결과1 : 3.141592
		System.out.println(Math.round(pi));
//		결과2 : 3.141592
		System.out.println(pi);
//		결과3 : 3141.592
		System.out.println(pi * 1000);
//		결과4 : 3142
		System.out.println(Math.round(pi * 1000));
//		결과5 : 3.142
		System.out.println((double)Math.round(pi * 1000) / 1000);
//		결과6 : 3.141
		System.out.println((int)(pi * 1000) / 1000.0);
		
		
	}
}

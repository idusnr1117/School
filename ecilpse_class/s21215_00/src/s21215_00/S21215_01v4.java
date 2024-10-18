package s21215_00;

public class S21215_01v4 {
	
	public static void main(String[] args) {
		
		int x = 1;
		int y = 2;
		
		double result_0 = x / y;
		double result_1 = (double)x / y;
		double result_2 = x / (double)y;
		double result_3 = (double)x / (double)y;
		
		System.out.println("result_0 : " + result_0);
		System.out.println("result_1 : " + result_1);
		System.out.println("result_2 : " + result_2);
		System.out.println("result_3 : " + result_3);
		
		
	}
}
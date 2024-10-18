package s21215_00;

public class S21215_01v2 {
	
	public static void main(String[] args) {
		
		float var1 = 3.14f;
		double var2 = 3.14;
		
		float var3 = 0.1234567890123456789f; 
		double var4 = 0.1234567890123456789;
		
		double var5 = 3e6;
		float var6 = 3e6f;
		double var7 = 2e-3;
		
		float var8 = 0.0101011113f; // 정밀도 범위가 7자리기에 0.010101112나옴
		double var9 = 0.0101011113010101139; // 정밀도 범위가 15자리 기에 이상하게 나옴
		
		System.out.println("var1 : " + var1);
		System.out.println("var2 : " + var2);
		System.out.println("var3 : " + var3);
		System.out.println("var4 : " + var4);
		System.out.println("var5 : " + var5);
		System.out.println("var6 : " + var6);
		System.out.println("var7 : " + var7);
		System.out.println(var8);
		System.out.println(var9);
		
		
	}
}

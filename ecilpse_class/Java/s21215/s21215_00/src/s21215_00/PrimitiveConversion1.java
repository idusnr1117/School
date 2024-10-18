package s21215_00;

public class PrimitiveConversion1 {
	
	public static void main(String[] args) {
		
		int int_value = 10;
		byte byte_value = (byte)int_value;
		System.out.println("byte_value : " + byte_value);
		
		int_value = 65;
		char char_value = (char)int_value;
		System.out.println("char_value : " + char_value);
		
		double double_value = 3.14;
		int_value = (int)double_value;
		System.out.println("int_value : " + int_value);
		
		int_value = 10;
		double_value = 5.7;
		int result = int_value + (int)double_value;
		System.out.println("result : " + result);
		
	}
}

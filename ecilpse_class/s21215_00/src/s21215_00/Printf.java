package s21215_00;

public class Printf {
	
	public static void main(String[] args) {
		
		int value = 123;
		
		System.out.printf("상품의 가격은 : %d원\n", value);
		System.out.printf("상품의 가격은 : %6d원\n", value);
		System.out.printf("상품의 가격은 : %-6d원\n", value);
		System.out.printf("상품의 가격은 : %06d원\n", value);
		
		double area = 3.14159 * 10 * 10;
		System.out.printf("반지름이 %d인 원의 넓이 : %10.2f\n", 10, area);
		
		String name = "우리들";
		String job = "소프트웨어개발과";
		System.out.printf("%6d / %-10s / %10s\n", 1, name, job);
				
		
	}

}

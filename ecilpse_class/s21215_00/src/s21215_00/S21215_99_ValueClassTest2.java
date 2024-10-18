package s21215_00;

public class S21215_99_ValueClassTest2 {
	
	public static void main(String[] args) {
		
		Circle a = new Circle();
		a.radius = 100;
		a.color = "Blue";
		double area = a.calc_area();
		System.out.println("a 필드색상: " + a.color + " 원의 면적= "  + area);
		
		Circle b = new Circle();
		b.radius = 30;
		b.color = "Black";
		area = b.calc_area();
		System.out.println("b 필드색상: " + b.color + " 원의 면적= "  + area);
		
		Circle c = new Circle();
		area = c.calc_area();
		System.out.println("c 필드색상: " + c.color + " 원의 면적= "  + area);
		
	}
}

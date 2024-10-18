package s21215_java31;

public class Overriding {
	
	public static void main(String[] args) {
		
		Overriding_a over_a = new Overriding_a();
		over_a.cal(8);
		
		Overriding_b over_b = new Overriding_b();
		over_b.cal();
		
		Overriding_b over_b2 = new Overriding_b();
		over_b2.cal(3);
		
	}
}

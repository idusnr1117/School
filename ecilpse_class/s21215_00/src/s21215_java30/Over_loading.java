package s21215_java30;

public class Over_loading {
	
	public static void main(String[] args) {
		
		Over_load OL = new Over_load();
		
		int a = 31;
		
		OL.cal();
		OL.cal(3, 4);
		OL.cal(3.14);
		OL.cal(3.14, 9);
		
	}
}

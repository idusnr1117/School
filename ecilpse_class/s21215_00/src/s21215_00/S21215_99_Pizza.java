package s21215_00;

public class S21215_99_Pizza {
	
	int size;
	String type;


	public S21215_99_Pizza()
	{
		size = 12;
		type = "슈퍼슈프림";
	}
	
	public S21215_99_Pizza(int s, String t)
	{
		size = s;
		type = t;
	}
	
	public static void main(String[] args) {
		
		S21215_99_Pizza obj1 = new S21215_99_Pizza();
		System.out.println("size : " + obj1.size + " type : " + obj1.type);
		
		S21215_99_Pizza obj2 = new S21215_99_Pizza(24, "포테이토");
		System.out.println("size : " + obj2.size + " type : " + obj2.type);
		
	}
}

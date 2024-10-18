package s21215_00;

public class S21215_99_Pizza2 {
	
	int size;
	String type;


	public S21215_99_Pizza2()
	{
		size = 12;
		type = "슈퍼슈프림";
	}
	
	public S21215_99_Pizza2(int s, String t)
	{
		size = s;
		type = t;
		
		if (size >= 25)
		{
			size += 2;
			type += " + 감자칩";
		}
		
	}
	
	public static void main(String[] args) {
		
		S21215_99_Pizza2 obj1 = new S21215_99_Pizza2();
		System.out.println("size : " + obj1.size + " type : " + obj1.type);
		
		S21215_99_Pizza2 obj2 = new S21215_99_Pizza2(21, "포테이토");
		System.out.println("size : " + obj2.size + " type : " + obj2.type);
		
		S21215_99_Pizza2 obj3 = new S21215_99_Pizza2(25, "포테이토");
		System.out.println("size : " + obj3.size + " type : " + obj3.type);
		
	}
}

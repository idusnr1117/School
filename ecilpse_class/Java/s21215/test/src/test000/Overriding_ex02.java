package test000;

public class Overriding_ex02 {
	
	String name;
	String company = "성일정보고";
	String model = "2학년 12반";
	String number = "비공개";
	
	public Overriding_ex02(String name)
	{
		this.name = name;
	}
	
	public Overriding_ex02(String name, String number)
	{
		this.name = name;
		this.number = number;
	}
	
	public void print()
	{
		System.out.printf("이름 : %s\n학교 : %s\n학번 : %s\n핸드폰 : %s",name, company, model, number );
	}
	
	public static void main(String[] args) {
		Overriding_ex02 ctor2 = new Overriding_ex02("천경호", "010-0101-1234");
		ctor2.print();
		System.out.println();
		
		Overriding_ex02 ctor3 = new Overriding_ex02("이주선");
		ctor3.company = ctor3.company + " 부반장";
		ctor3.print();
	}
	
}

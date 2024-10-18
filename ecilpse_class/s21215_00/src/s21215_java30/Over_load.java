package s21215_java30;

public class Over_load {
	
	public void cal()
	{
		System.out.println("인수 없음");
	}
	
	public void cal(int a, int b)
	{
		System.out.println("인수 " + a + " and " + b);
	}
	
	public void cal(double a, int b)
	{
		System.out.println("인수 " + a + " and " + b);
	}
	
	public void cal(int a, double b)
	{
		System.out.println("인수 " + a + " and " + b);
	}
	
	public void cal(char d)
	{
		System.out.println("인수 " + d);
	}
	
	public void cal(int a)
	{
		System.out.println("인수 " + a);
	}
	
	public void cal(double d)
	{
		System.out.println("인수 " + d);
	}
	

}

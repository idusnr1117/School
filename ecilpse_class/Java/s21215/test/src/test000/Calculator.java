package test000;

public class Calculator {
	
	double add(int a, int b)
	{
		return a + b;
	}
	
	int add(int a, int b, int c)
	{
		return a + b + c;
	}
	
	double add(double a, double b)
	{
		a += b;
		if (a > 10)
		{
			a = b;
		}
		else
		{
			a += b;
		}
		return a;
	}
	
	public static void main(String[] args) {
		
		Calculator c = new Calculator();
		System.out.println(c.add(3, 4)); 		// test1
		System.out.println(c.add(2, 4, 8)); 	// test2
		System.out.println(c.add(3.14, 2.54));	// test3
		
	}

}

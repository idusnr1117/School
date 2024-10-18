package s21215_recursion;

public class Recursion2_factorial {
	
	public static void main(String[] args) 
	{
		
        System.out.println("factorial : " + factorial(15));
        
    }
	
	static int factorial(int num)
	{
        System.out.println("ing : " + num);
        if(num == 1)
        {
            return 1;
        }
        else
        {
            return num + factorial(num - 1);
        }
    }

}

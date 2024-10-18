package s21215_recursion;

public class Recursion1_sum_plus {
	
	public static void main(String[] args) {
		
        System.out.println("sum : " + sum_plus(10));
        
    }
	
	static int sum_plus(int num)
	{
        System.out.println("ing : " + num);
        if(num == 1)
        {
            return 1;
        }
        else
        {
            return num + sum_plus(num - 1);
        }
    }

}

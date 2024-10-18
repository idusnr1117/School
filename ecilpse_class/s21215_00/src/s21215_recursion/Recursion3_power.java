package s21215_recursion;

public class Recursion3_power {
	
	public static void main(String[] args) {
		
        final int Base = 2;
        final int Exponent = 8;
        
        System.out.println(Base + "의 " + Exponent + "승 = " + power(Base, Exponent));
        
    }
	
	public static int power(int base, int exponent)
	{
        if(exponent == 0)
        {
            return 1;
        }
        else
        {
            return base * power(base, exponent - 1);
        }
    }   

}

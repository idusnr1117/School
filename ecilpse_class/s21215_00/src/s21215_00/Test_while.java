package s21215_00;

public class Test_while {
	
	public static void main(String[] args) {
		
		int cnt = 1;
		int sum = 0;
		
		while (cnt <= 10)
		{
			sum += cnt;
			cnt++;
		}
		
		System.out.println("sum : " + sum);
		
	}
}

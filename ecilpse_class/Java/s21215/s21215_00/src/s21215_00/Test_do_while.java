package s21215_00;

public class Test_do_while {
	
	public static void main(String[] args) {
		
		int cnt = 0;
		int sum = 0;
		
		do
		{
			cnt++;
			sum += cnt;
			System.out.println("sum : " + sum + " cnt : " + cnt);
		}	while (cnt < 10);
		
	}
}

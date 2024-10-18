package s21215_00;

import java.util.Scanner;

public class S21215_03v3 {
	
	public static void main(String[] args) {
		
		System.out.println("구구단을 기본으로 몇 단까지 할까요 : ");
		Scanner sc = new Scanner(System.in);
		int k = sc.nextInt();
		
		for (int i = 2; i <= k; i++)
		{
			System.out.printf("%d단 입니다\n", i);
			for (int j = 1; j < 10; j++)
			{
				System.out.printf("%d * %d = %d\n", i, j, i * j);
			}
			System.out.println("-------------");
		}
		
		
	}
}

package test000;

import java.util.Arrays;
import java.util.Scanner;

public class Random_one {
	
	public static void main(String[] args) {
		
		int lucky_num;
		int index = 0;
		int[] arr_num = new int[100];
		int[] arr_ok = new int[6];
		// 정수를 1 ~ 9 범위 내에서 입력받는다.
		for (;true;)
		{
			System.out.println("좋아하는 숫자를 입력하시오 (1 ~ 9)");
			Scanner sc = new Scanner(System.in);
			lucky_num = sc.nextInt();
			if (lucky_num > 9 || lucky_num < 1)
			{
				continue;
			}
			for (int i = 0; i < arr_num.length; i++)
			{
				arr_num[i] = (int)(Math.random() * 45 + 1);
			}
			for (int i = 0; i < arr_ok.length; i++)
			{
				arr_ok[i] = arr_num[lucky_num + i];
			}
			break;
		}
		
		Arrays.sort(arr_ok);
		System.out.println(Arrays.toString(arr_ok));
	
		
	}
	
}

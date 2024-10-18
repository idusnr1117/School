package s21215_00;

import java.util.Random;
import java.util.Scanner;

public class S21215_Gugudan_v1 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int x, y;
		Random ran = new Random();
		
		x = Math.abs(ran.nextInt() % 9) + 1;
		if (x == 1) x += 1;
		y = Math.abs(ran.nextInt() % 9) + 1;
		int num = x * y;
		
		System.out.println();
		System.out.println("* 구구단 " + x + "단에 대한 문제입니다");
		System.out.println();
		System.out.print(x + " * " + y + " = ");
		int result = sc.nextInt();
		
		if (result == num) System.out.println("맞았습니다!");
		else
		{
			System.out.println("틀렸습니다.");
			System.out.println("정답은 " + num + "입니다.");
		}
		
	}
}

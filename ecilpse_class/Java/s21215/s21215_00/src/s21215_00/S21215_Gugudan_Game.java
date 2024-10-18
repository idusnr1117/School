package s21215_00;

import java.util.Random;
import java.util.Scanner;

public class S21215_Gugudan_Game {
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		Random ran = new Random();
		
		int x = args.length == 0 ? Integer.parseInt(sc.nextLine()) : new Integer(args[ran.nextInt(args.length)]);
		
		int y = Math.abs(ran.nextInt(1, 10));
		int num = x * y;
		
		System.out.println("\r* 구구단 " + x + "단에 대한 문제입니다");
		System.out.printf("\r%d * %d = ", x, y);
		int answer = sc.nextInt();
		
		String result = (answer == num) ? "맞았습니다!" : "틀렸습니다. 정답은 " + num + "입니다.";
		System.out.println(result);
		
		System.exit(0);

	}
}

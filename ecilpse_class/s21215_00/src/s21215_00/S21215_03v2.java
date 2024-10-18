package s21215_00;

import java.util.Scanner;

public class S21215_03v2 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("현재 월을 입력하세요 >>> ");
		int month = sc.nextInt();
		String season = "";
		
		switch (month) {
			case 3, 4, 5:
				season = "Spring";
				break;
			case 6, 7, 8:
				season = "Summer";
				break;
			case 9, 10, 11:
				season = "Autumn";
				break;
			default:
				season = "Winter";
				break;
		}
		
		System.out.printf("현재의 계절은 %s입니다", season);
		
		
	}

}

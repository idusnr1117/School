package s21215_00;

import java.util.Scanner;

public class S21215_03v1 {
	
	public static void main(String[] args) {
		
		char grade;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("점수를 입력하세요 > ");
		
		int score = sc.nextInt();
		
		if (score >= 90) grade = 'A';
		else if (score >= 80) grade = 'B';
		else if (score >= 70) grade = 'C';
		else if (score >= 60) grade = 'D';
		else grade = 'F';
		
		System.out.printf("당신의 학점은 %s입니다.", grade);
		
	}

}

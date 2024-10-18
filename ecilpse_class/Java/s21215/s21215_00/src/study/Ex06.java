package study;

import java.util.Scanner;

public class Ex06 {
	
	static int cnt = 0;
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int plate = sc.nextInt(); // 원판 개수
		hanoi(1, 2, 3, plate);
		System.out.println(cnt);
		
	}
	
	public static void hanoi(int from, int m, int to, int plate)
	{
		if(plate == 0)	return; // 원판 없으면 종료
		hanoi(from, to, m, plate - 1); // 원판 plate - 1은 from -> m으로 이동 
		cnt++; // 옮긴 횟수 증가
		hanoi(m, from, to, plate - 1); // 원판 plate - 1이 m -> to로 이동
	}
	
}

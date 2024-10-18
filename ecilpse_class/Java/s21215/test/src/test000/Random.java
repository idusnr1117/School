package test000;

public class Random {
	
	public static void main(String[] args) {
		
		// 0.0 ~ 1.0 사이의 실수 난 수 구하기
		for (int i = 0; i < 5; i++)
		{
			System.out.println(Math.random());
		}
		
		for (int i = 0; i < 5; i++)
		{
			System.out.println((int)(Math.random() * 10) + 1);
		}
	}
	
}

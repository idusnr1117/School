package s21215_00;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Random;

public class S21200_Baseball {
	
	public static void main(String[] args) throws IOException{
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		Random ran = new Random();
        int x = Math.abs(ran.nextInt() % 9) + 1;
        int y = Math.abs(ran.nextInt() % 9) + 1;
        int z = Math.abs(ran.nextInt() % 9) + 1;
        int cnt = 0;
        
        while(x == y || x == z || y == z)
        {
        	x = Math.abs(ran.nextInt() % 9) + 1;
            y = Math.abs(ran.nextInt() % 9) + 1;
            z = Math.abs(ran.nextInt() % 9) + 1;
        }
		
		ArrayList<Integer> nums = new ArrayList<>();
		ArrayList<Integer> rans = new ArrayList<>();
		
		rans.add(x);
		rans.add(y);
		rans.add(z);
		
		System.out.println(x + " " + y + " " + z);
		
		while(true)
		{
			int ball = 0;
			int strike = 0;
			cnt++;
			System.out.println("카운트 : " + cnt);
			for (int i = 1; i <= 3; i++)
			{
				System.out.print(i + "번째 숫자 : ");
				int num = Integer.parseInt(br.readLine());
				if (!(num > 9) && !(num < 1) && !nums.contains(num))
				{
					nums.add(num);
				}
				else		
				{
					i--;
					System.out.println("9보다 크거나 전에 입력하신 값은 입력하실 수 없습니다. 다시 입력해주세요.");
				}
			}
			for (int i = 0; i < 3; i++)
			{
				if (rans.get(i) == nums.get(i)) strike++;
				else if (rans.contains(nums.get(i))) ball++;
			}
			if (strike == 3)
			{
				System.out.println("참 잘했어요!");
				break;
			}
			System.out.println("Strike : " + strike + " " + "Ball : " + ball);
			nums.clear();
		}
		
	}
}

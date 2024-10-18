package s21215_00;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class S21215_06v1 {

		public static void main(String[] args) throws IOException {
			
			BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
			
			Tv t = new Tv();
			
			t.channel = Integer.parseInt(bf.readLine());
			t.channel_down();
			System.out.println("a현재 채널은 " + t.channel + "입니다.");
			
			t.channel_up();
			System.out.println("b현재 채널은 " + t.channel + "입니다.");
			
	}
}

class Tv
{
		String color;
		boolean power;
		int channel;
		
		void power() { power = !power; }
		void channel_up() { ++channel; }
		void channel_down() { --channel; }
}

package s21215_00;

import java.io.IOException;

public class Temp_01_for {
	
	public static void main(String[] args) throws IOException {
		
		int keyCode;
		
		for(;;) {
			keyCode = System.in.read();
			System.out.println("keyCode : " + keyCode);
			if (keyCode == 113) break;
		}
		
		System.out.println("종료");
		
	}
}

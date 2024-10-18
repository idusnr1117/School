package s21215_00;

import java.io.*;

public class S21215_01v6 {
	
	public static void main(String[] args) throws IOException{ 
		
		int keyCode;
		
		while(true)
		{
			keyCode = System.in.read();
			System.out.println("keyCode : " + keyCode);
			
			if(keyCode == 113)
			{
				System.out.println("종료");
				break;
			}

		}
		
		
	}
}
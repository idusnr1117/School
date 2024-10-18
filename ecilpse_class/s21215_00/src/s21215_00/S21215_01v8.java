package s21215_00;

import java.io.*;

public class S21215_01v8 {
	
	public static void main(String[] args) throws IOException{ 
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));

		String inString;
		
		while(true)
		{
			System.out.print("입력하세요 : ");
			inString = bf.readLine();
			
			System.out.println("입력된 문자열은 : \"" + inString + "\"");
			
			if (inString.equals("q")) break;
		}
		
		System.out.println("종료");
		bf.close();
		
	}
}
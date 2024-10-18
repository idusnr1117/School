package s21215_00;

import java.io.*;

public class S21215_01v7 {
	
	public static void main(String[] args) throws IOException{ 
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
		
		int intVal;
		double douVal;
		String strVal;
		
		System.out.println("1 문장을 입력하세요 : ");
		strVal = bf.readLine();
		System.out.println("2 정수를 입력하세요 : ");
		intVal = Integer.parseInt(bf.readLine());
		System.out.println("3 실수를 입력하세요 : ");
		douVal = Double.parseDouble(bf.readLine());
		
		System.out.println("1 입력한 문장은 " + strVal + " 입니다.");
		System.out.println("2 입력한 정수는 " + intVal + " 입니다.");
		System.out.println("3 입력한 실수는 " + douVal + " 입니다.");
		
		bf.close();
	}
}
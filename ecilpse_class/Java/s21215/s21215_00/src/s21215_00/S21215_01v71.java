package s21215_00;

import java.io.*;

public class S21215_01v71 {
	
	public static void main(String[] args) throws IOException{ 
		
		int intVal = 100;
		int intVal2 = -100;
		double douVal = 3.14;
		double douVal2 = -3.14;
		
		intVal = -intVal;
		intVal2 = -intVal2;
		douVal = -douVal;
		douVal2 = -douVal2;
		
		System.out.println("int1: " + intVal + " int2: " + intVal2);
		System.out.println("double1: " + douVal + " double2: " + douVal2);
		
	}
}
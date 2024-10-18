package s21215_00;

import java.util.Scanner;
import java.util.Stack;

public class TestApp11 {
	
    public static void main(String[] args) {
    	
        Scanner sc = new Scanner(System.in);
        Stack<Integer> stack = new Stack<>();
        StringBuffer bf = new StringBuffer();
        
        int num = 1;
        int N = sc.nextInt();
        int nums[] = new int[N];
        
        for (int i = 0; i < N; i++) {
        	nums[i] = sc.nextInt();
        }
        
        for (int i = 0; i < N; i++) {
            int su = nums[i];
            while (num <= su)
            {
            	stack.push(num++);
            	bf.append("+\n");
            }
            if (stack.isEmpty() || stack.peek() > su)
            {
            	System.out.println("NO");
            	return; 
            }
            stack.pop();
            bf.append("-\n");
        }
        System.out.println(bf);
        
    }
} 

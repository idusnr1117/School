package test000;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Random_one2 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int lucky_num;
        int index = 0;
        int array_nums[] = new int[100];
        int array_ok[] = new int[6];
        int cnts[] = new int[46];
        
        for (int i = 0; i < array_nums.length; i++)
        {
            array_nums[i] = (int)(Math.random() * 45 + 1);
            cnts[array_nums[i]]++;
        }
        
        for(;true;)
        {
            System.out.println("좋아하는 숫자를 입력하세요(1 ~ 9)");
            lucky_num = sc.nextInt();
            if (lucky_num < 1 || lucky_num > 9)
            {
                System.out.println("숫자는 1 ~ 9 범위 입니다.");
                continue;
            }
            break;
        }
        
        ArrayList<Integer> plused = new ArrayList<>();
        for (int i = lucky_num; i < array_nums.length; i++)
        {
            if (!(plused.contains(array_nums[i])))
            {
                array_ok[index++] = array_nums[i];
                plused.add(array_nums[i]);
            }
            if (index > 5)
            {
                break;
            }
        }
        
        Arrays.sort(array_ok);
        System.out.println(Arrays.toString(array_ok));

        for (int i = 1; i < cnts.length; i++)
        {
        	System.out.printf("%d: %d\n", i, cnts[i]);
        }
        

    }
}
package sort;

import java.util.Arrays;

public class Bubble_sort2 {
	
	public static void main(String[] args) {
		
		int nums[] = {10, 8, 1, 3, 9, -5};
		
		System.out.println("Array Length : " + nums.length);
		System.out.println("source : " + Arrays.toString(nums));
		
		for (int i = 1; i < nums.length; i++)
		{
			for (int j = 0; j < nums.length - i; j++)
			{
				if (nums[j] > nums[j + 1])
				{
					int temp = nums[j + 1];
					nums[j + 1] = nums[j];
					nums[j] = temp;
				}
			}
			System.out.printf("pass-%d : " + Arrays.toString(nums) + "\n", i);
		}
		
		System.out.println("result : " + Arrays.toString(nums));
		
	}
}

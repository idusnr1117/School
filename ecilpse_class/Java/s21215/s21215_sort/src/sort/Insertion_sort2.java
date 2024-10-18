package sort;

import java.util.Arrays;

public class Insertion_sort2 {
	
	public static void main(String[] args) {
		
		int nums[] = {7, 5, 4, 3, 1};
		
		System.out.println("Array Length : " + nums.length);
		System.out.println("source : " + Arrays.toString(nums));

		for (int i = 1; i < nums.length; i++)
		{
			for (int j = i; j > 0; j--)
			{
				if (nums[j - 1] > nums[j])
				{
					int temp = nums[j - 1];
					nums[j - 1] = nums[j];
					nums[j] = temp;
				}
			}
			System.out.printf("pass-%d : " + Arrays.toString(nums) + "\n", i);
		}
		
		System.out.println("result : " + Arrays.toString(nums));
	}
}


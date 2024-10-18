package sort;

import java.util.Arrays;

public class Selection_sort2 {
	
	public static void main(String[] args) {
		
		int nums[] = {7, 5, 4, 3, 1};
		
		System.out.println("Array Length : " + nums.length);
		System.out.println("source : " + Arrays.toString(nums));

		for (int i = 0; i < nums.length; i++)
		{
			int min = i;
			for (int j = i + 1; j < nums.length; j++)
			{
				if (nums[j] < nums[min])
				{
					int temp = nums[i];
					nums[i] = nums[min];
					nums[min] = temp;
				}
			}
			System.out.printf("pass-%d : " + Arrays.toString(nums) + "\n", i);
		}
		
		System.out.println("result : " + Arrays.toString(nums));
	}
}


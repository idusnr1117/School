package sort;

public class Selection_sort {
	
	public static void main(String[] args) {
		
		int nums[] = {7, 5, 4, 3, 1};

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
		}
		
		for (int i : nums)
		{
			System.out.println(i + " ");
		}
	}
}


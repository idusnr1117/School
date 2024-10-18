package sort;

public class Insertion_sort {
	
	public static void main(String[] args) {
		
		int nums[] = {7, 5, 4, 3, 1};
		

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
		}
		
		for (int i : nums)
		{
			System.out.print(i + " ");
		}
		
	}
}

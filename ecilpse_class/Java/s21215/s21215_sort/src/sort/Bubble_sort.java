package sort;

public class Bubble_sort {
    
    public static void main(String[] args) {
        
        int nums[] = {7, 5, 4, 3, 1};
        
        for (int i = 1; i < nums.length; i++)
        {
            for (int j = 0; j < nums.length - 1; j++)
            {
                if (nums[j] > nums[j + 1])
                {
                    int temp = nums[j + 1];
                    nums[j + 1] = nums[j];
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
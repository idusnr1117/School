public class S21215_00v21 {
    public static void main(String[] args) {

        int even = 0;
        int odd = 0;

            for (int cnt = 1; cnt < 11; cnt++)
            {
                if (cnt % 2 == 0)
                {
                     even += cnt;
                }
                else
                {
                    odd += cnt;
                }
            System.out.println("cnt : "+ cnt + " 짝수 : " + even + ", 홀수 : " + odd + " 전체의 합 : " + (even + odd));
            }
            
    }
}
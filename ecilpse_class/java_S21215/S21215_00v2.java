public class S21215_00v2 {
    public static void main(String[] args) {
        int jjak = 0;
        int hol = 0;
            for(int cnt = 1; cnt < 11; cnt++) {
                if (cnt % 2 == 0) {
                    jjak += cnt;
                }
                else
                {
                    hol += cnt;
                }
            System.out.println("cnt : "+ cnt + " 짝수 : " + jjak + ", 홀수 : " + hol + " 전체의 합 : " + (jjak + hol));
            }
            
    }
}
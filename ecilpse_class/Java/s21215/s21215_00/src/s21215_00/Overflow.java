package s21215_00;

public class Overflow {

    public static void main(String[] args) {
    	
        int var1 = 2147483646; // int의 최대 양숫값 - 1
        for (int i = 0; i < 5; i++)
        {
            var1++;
            System.out.println("var1 : " + var1);
            
//          양수의 한계를 넘어서 "Overflow"가 발생함
//          -> 양수에서 음수로 넘어가버림
//          var1 : 2147483647
//          var1 : -2147483648
//          var1 : -2147483647
//          var1 : -2147483646
//          var1 : -2147483645
        }
        
        byte var2 = 125; // byte의 최대 양숫값 - 2
        for (int i = 0; i < 5; i++)
        {
            var2++;
            System.out.println("var2 : " + var2);
            
//          양수의 한계를 넘어서 "Overflow"가 발생함
//          -> 양수에서 음수로 넘어가버림
//          var2 : 126
//          var2 : 127
//          var2 : -128
//          var2 : -127
//          var2 : -126
        }
        
        
    }
}
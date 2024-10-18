package s21215_04;

import java.util.Scanner;

public class S21215_Atm2 {

    static int back_account; // class value
    int account;  // instance value
    
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

    	// 참조 변수
        S21215_Atm2 a = new S21215_Atm2();
        S21215_Atm2 b = new S21215_Atm2();
        
        atm(a, b);

    }
    
    private static void atm(S21215_Atm2 a, S21215_Atm2 b)
    {
        do
        {
            System.out.println("\r메뉴 선택 : 1.입금 2.출금 9.종료");
            int selectMenu = sc.nextInt();
            if (selectMenu == 9) exit();
            else if (selectMenu < 1 || selectMenu > 2)
            {
                System.out.println("허용되지 않은 값 입니다.");
                continue;
            }

            if (selectMenu == 1) deposit(a, b);
            else if (selectMenu == 2) withdraw(a, b);
        } while (true);
        
    }

    private static void deposit(S21215_Atm2 a, S21215_Atm2 b)
    {
        System.out.println("\r계좌 선택 : 전메뉴=0   A=1   B=2   종료=9");
        int select = sc.nextInt();
        switch (select)
        {
            case 9:
                exit();
                break;
            case 0:
                return;
            case 1:
            case 2:
                System.out.println("금액 입력 :");
                int money = sc.nextInt();
                if (money < 0)
                {
                    System.out.println("허용되지 않은 값 입니다.");
                    return;
                }

                S21215_Atm2 selectedAccount = (select == 1) ? a : b;
                selectedAccount.account += money;
                back_account += money;

                System.out.printf("A잔액 : %d 총금액 : %d\n", a.account, back_account);
                System.out.printf("B잔액 : %d 총금액 : %d\n", b.account, back_account);
                break;
            default:
                System.out.println("허용되지 않은 값 입니다.");
        }
    }

    private static void withdraw(S21215_Atm2 a, S21215_Atm2 b)
    {
        System.out.println("\r계좌 선택 : 전메뉴=0   A=1   B=2   종료=9");
        int select = sc.nextInt();
        switch (select)
        {
            case 9:
                exit();
                break;
            case 0:
                return;
            case 1:
            case 2:
                System.out.println("금액 입력 :");
                int money = sc.nextInt();

                if (money < 0)
                {
                    System.out.println("허용되지 않은 값 입니다.");
                    return;
                }

                S21215_Atm2 selectedAccount = (select == 1) ? a : b;

                if (money > selectedAccount.account)
                {
                    System.out.println("잔액이 부족합니다.");
                    return;
                }

                selectedAccount.account -= money;
                back_account -= money;

                System.out.printf("A잔액 : %d 총금액 : %d\n", a.account, back_account);
                System.out.printf("B잔액 : %d 총금액 : %d\n", b.account, back_account);
                break;
            default:
                System.out.println("허용되지 않은 값 입니다.");
        }  
    }
    
    private static void exit()
    {
    	System.out.println("이용해 주셔서 감사합니다^^");
        System.exit(0);
	}
    
}

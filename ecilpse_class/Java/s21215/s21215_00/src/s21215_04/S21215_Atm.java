package s21215_04;

import java.util.Scanner;

public class S21215_Atm {
	
	static int back_acount;
	int acount;
	
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		S21215_Atm a = new S21215_Atm();
		S21215_Atm b = new S21215_Atm();
		
		do
		{
			System.out.println("\r메뉴 선택 : 1.입금 2.출금 9.종료");
			int select_menu = sc.nextInt();
			if(select_menu == 9) break;
			else if(select_menu < 1 || select_menu > 2) continue;
			
			if (select_menu == 1)
			{
				System.out.println("\r계좌 선택 : 전메뉴=0   A=1   B=2   종료=9");
				int select = sc.nextInt();
				if (select == 0) continue;
				else if (select == 1)
				{
					System.out.println("금액 입력 :");
					int money = sc.nextInt();
					if (money < 0)
					{
						System.out.println("허용되지 않은 값 입니다.");
						continue;
					}
					else
					{
						a.acount += money;
						back_acount += money;
						System.out.printf("A잔액 : %d 총금액 : %d\n", a.acount, back_acount);
						System.out.printf("B잔액 : %d 총금액 : %d\n", b.acount, back_acount);
					}
				}
				else if (select == 2)
				{
					System.out.println("금액 입력 :");
					int money = sc.nextInt();
					if (money < 0)
					{
						System.out.println("허용되지 않은 값 입니다.");
						continue;
					}
					else
					{
						b.acount += money;
						back_acount += money;
						System.out.printf("A잔액 : %d 총금액 : %d\n", a.acount, back_acount);
						System.out.printf("B잔액 : %d 총금액 : %d\n", b.acount, back_acount);
					}

				}
				else break;	
			}
			else if (select_menu == 2)
			{
				System.out.println("\r계좌 선택 : 전메뉴=0   A=1   B=2   종료=9");
				int select = sc.nextInt();
				if (select == 0) continue;
				else if (select == 1)
				{
					System.out.println("금액 입력 :");
					int money = sc.nextInt();
					if (money > a.acount)
					{
						System.out.println("잔액이 부족합니다.");
						continue;
					}
					else
					{
						a.acount -= money;
						back_acount -= money;
						System.out.printf("A잔액 : %d 총금액 : %d\n", a.acount, back_acount);
						System.out.printf("B잔액 : %d 총금액 : %d\n", b.acount, back_acount);
					}
				}
				else if (select == 2)
				{
					System.out.println("금액 입력 :");
					int money = sc.nextInt();
					if (money > b.acount)
					{
						System.out.println("잔액이 부족합니다.");
						continue;
					}
					else
					{
						b.acount -= money;
						back_acount -= money;
						System.out.printf("A잔액 : %d 총금액 : %d\n", a.acount, back_acount);
						System.out.printf("B잔액 : %d 총금액 : %d\n", b.acount, back_acount);
					}
				}
			}
			else break;
		}
		while(true);
		
		
	}
}









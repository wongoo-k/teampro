package chap04;

import java.util.Scanner;

public class Exercise07 {

   public static void main(String[] args) {
      // TODO Auto-generated method stub
      boolean run = true;
      
      int balance = 0; // 계좌잔고 
      
      Scanner scanner = new Scanner(System.in);
      
      while(run) { 
         System.out.println("--------------------------");
         System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료");
         System.out.println("--------------------------");
         System.out.print("선택>");
         
         int choice = scanner.nextInt(); // 숫자만 받겠다.. 
         if(choice == 1) { 
            // 예금 
            // 예금액을 입력받아서 
            // balace에 누적합산.. 
            System.out.print("예금액>");
            int deposit = scanner.nextInt();
            balance = balance + deposit; 
         } else if(choice == 2) { 
            // 출금
            // 출금액을 입력받아서 
            // balance에서 뺀다. 잔액체크 
            System.out.print("출금액>");
            int withdraw = scanner.nextInt();
            balance = balance - withdraw; // 잔액보다 클 경우는 지금 체크하지 않는다.
         } else if(choice == 3) { 
            // 잔고 
            // balance를 출력
            System.out.println("잔고>"+balance);
         } else if(choice == 4) {
            // 종료 
            run = false;
         }
      }
      System.out.println("프로그램 종료");
   }

}
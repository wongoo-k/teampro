package chap04;

import java.util.Scanner;

public class DoWhileExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("메시지를 입력하세요");
		System.out.println("프로그램을 종료하려면 q를 입력하세요.");
		
		Scanner scanner = new Scanner(System.in);
		String inputString; // int keyCode (정수 => AscII)
		
		do {
			System.out.print(">");
			inputString = scanner.nextLine();
			System.out.println("답변: " + inputString); //Echo 시스템
		} while( ! inputString.equals("q") );
		
		System.out.println();
		System.out.println("프로그램 종료");
	}

}

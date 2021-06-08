package chap15;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class BankApplicationMap {

	private static Map<String,Account> accountArray = new HashMap<String,Account>();

	private static Scanner scanner = new Scanner(System.in);

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		boolean run = true;

		while(run) {
			System.out.println("----------------------------------------------------------");
			System.out.println("1.계좌생성 | 2.계좌삭제 | 3.계좌목록 | 4.예금 | 5.출금 | 6.종료");
			System.out.println("----------------------------------------------------------");
			System.out.print("선택> ");

			int selectNo = 0;
			try { 
				selectNo = scanner.nextInt();
			} catch (Exception e) { // Exception을 상속받아서 NullPointer도.. Classcast도  
				selectNo = 7;
				scanner.nextLine(); // 전에 있던 엔터를 지움.
				//System.out.println(e.getMessage());
			} finally { 
				// 할게 있을까??? 없으면 finally 삭제 
			}

			if(selectNo == 1) {
				createAccount();
			} else if(selectNo == 2) {
				accountDelete();            
			} else if(selectNo == 3) {
				accountList();
			} else if(selectNo == 4) {
				deposit();
			} else if(selectNo == 5) {
				withdraw();
			} else if(selectNo == 6) {
				run = false;
			} else { 
				System.out.println("숫자 1~5까지만 입력해 주세요");
			}
		}
		System.out.println("프로그램 종료");
	}

	//계좌생성하기
	private static void createAccount() { 
		scanner.nextLine(); // 전에 있던 엔터를 지움.
		// 사용자에게 계좌번호를 받는다.
		System.out.print("계좌번호 : ");
		String ano = scanner.nextLine();

		// Map<String,Account> accountArray
		// 받은 계좌번호가 중복인지 체크한다. (Map에서 key만 빼서 확인방법) 
		if(accountArray.containsKey(ano)) { 
			// 계좌가 존재하면  계좌가 존재합니다!!! 출력하고 끝. 
			System.out.println("[" + ano + "] 동일한 계좌가 존재합니다.");
		} else { 
			// 계좌가 존재하지 않으면... 
			// 중복이 아니면 계좌주를 받고 초기입금액을 받고 
			// 등록한다. 
			System.out.print("계좌주 : ");
			String owner = scanner.nextLine();

			System.out.print("초기입금액 : ");
			int balance = scanner.nextInt();

			Account acc = new Account(ano,owner,balance);

			accountArray.put(ano, acc);
			//accountArray.put(ano, new Account(ano,owner,balance););
			System.out.println("결과 : 계좌가 생성되었습니다.");
		}
	}
	//계좌 삭제하기 
	private static void accountDelete() {	   
		// 사용자에게 계좌번호를 받는다.
		scanner.nextLine();
		System.out.print("계좌번호 : ");

		String ano = scanner.nextLine();      

		if(accountArray.containsKey(ano)) {     
			// 위에서 입력받은 계좌번호가 있으면 
			System.out.print("계좌번호["+ ano +"]를 삭제하시겠습니까? (삭제는Y / 취소는 N )");   	  
			String answer = scanner.nextLine(); // 스캐너코드를 쓰면 무조건 아무것도 안하고 사용자 입력을 기다림. 
			                                    // 버퍼비우는거는 nextInt일때 숫자만 빼내고.. 뒤에 엔터를 안빼서 빼는거고 
			                                    
			// 새로 입력받아서 
			String upperAnswer = answer.toUpperCase();
			// 대문자로 무조건 변경하고 

			if(upperAnswer.equals("Y")) {
				// 변경된 문자가 와이 이면 리무브 
				accountArray.remove(ano);
				System.out.println("계좌가 삭제되었습니다.");
			} else if(upperAnswer.equals("N")) {
				// 아니면 취소 
				System.out.println("취소되었습니다.");	     	      	          
			} else {
				// 여기 오면 이상한거 
			}

		} else {
			// 위에 입력받은 계좌번호가 없으면
			System.out.println("계좌가 존재하지 않습니다.");
		}

	}

	//계좌목록보기
	private static void accountList() {
		// 111-111   홍길동   100 
		// key자리     owner자리    balance자리 

		Set<String> keySet = accountArray.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while(keyIterator.hasNext()) { 
			String key = keyIterator.next();
			Account acc = accountArray.get(key);
			System.out.println(acc.toString());
		}
	}

	//예금하기
	private static void deposit() {
		// 사용자에게 계좌번호를 받는다.
		// 계좌가 있으면 그 계좌에 사용자가 입력한 입금액을 추가하고.. 
		// 계좌가 없으면 계좌가 없습니다. 
		scanner.nextLine(); // 전에 있던 엔터를 지움.

		System.out.print("계좌번호 : ");
		String ano = scanner.nextLine();

		if(accountArray.containsKey(ano)) { 
			// 계좌가 존재하면 
			// 계좌를 꺼내서 
			// 꺼낸 계좌에 setBalance(getBalance + deposit)
			System.out.print("입금액 : ");
			int deposit = scanner.nextInt();

			Account acc = accountArray.get(ano);
			acc.setBalance(acc.getBalance()+deposit);
			System.out.println("결과 : 정상적으로 입금했습니다.");
		} else { 
			System.out.println("결과 : 계좌가 존재하지 않습니다.");
		}
	}

	//출금하기
	private static void withdraw() {
		scanner.nextLine(); // 전에 있던 엔터를 지움.

		System.out.print("계좌번호 : ");
		String ano = scanner.nextLine();

		if(accountArray.containsKey(ano)) { 
			// 계좌가 존재하면 
			// 계좌를 꺼내서 
			// 꺼낸 계좌에 setBalance(getBalance + deposit)
			System.out.print("출금액 : ");
			int withdraw = scanner.nextInt();

			Account acc = accountArray.get(ano);
			if(acc.getBalance() >= withdraw ) { // 잔액이 충분함.
				acc.setBalance(acc.getBalance() - withdraw);
				System.out.println("결과 : 정상적으로 출금 되었습니다. [" + acc.getBalance() +"]");
			} else { // 잔액이 모자람
				System.out.println("결과 : 잔액이 모자랍니다.");
			}
		} else { 
			System.out.println("결과 : 계좌가 존재하지 않습니다.");
		}
	}
}
//1. 전체 복습
//- 연습문제 다시 풀기 (안보고)
//- target : 6장 Bank 
//
//2. 응용 
//- ArrayList로 구성 (BankApplication) 
//- Map으로 구성   (BankApplication) 
// 기능 추가
// 1) 숫자입력받는곳에 문자가 들어왔을때 처리 
//    - 메뉴가 끝난다... 
//    - 재 입력을 받는다 숫자일때까지 
// 2) 계좌 삭제 기능 추가 
// 3) 계좌 등록시 중복 체크
// 4) 계좌이체 기능
//3. 고난도 응용 ? 
//- Account Class 
//- Bank Interface 
//- KBBank Class 
//- KbBankApplication Class 
//
//- 기존 Account Class / BankApplication Class 


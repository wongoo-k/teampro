package chap15;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BankApplication {
	// Account라는 Class를 담을 통만 선언한 것.. 실제 Account는 new 해서 넣어야함.
//	private static Account[] accountArray = new Account[100]; //100개의 통
	// 0 = 0번계좌 class, 1번 = 1번계좌 class...
	private static List<Account> accountArray = new ArrayList<Account>();
	
	// "ano" = 0번 계좌 class, "ano1" = 1번 계좌 class
	private static Scanner scanner = new Scanner(System.in);
	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		boolean run = true;
		while(run) {
			System.out.println("----------------------------------------");
			System.out.println(" 1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
			System.out.println("----------------------------------------");
			System.out.print("선택 > ");
			
			int selectNo = 0;
			
			try {
				selectNo = scanner.nextInt(); //숫자가아닌 문자가 입력됬을때 예외처리
			} catch (Exception e) { // Exception을 상속받아서 NullPointer도.. Classcast도..
				selectNo = 6;
				scanner.nextLine();
//				System.out.println(e.getMessage() + "문자가 아닌 숫자로 입력해주세요"); //error 메세지 출력
//			} finally {
				//할게 있을까?? 없으면 finally 삭제
			}
			
			if(selectNo == 1) {
				createAccount();
			} else if(selectNo == 2) {
				accountList();
			} else if(selectNo == 3) {
				deposit();
			} else if(selectNo == 4) {
				withdraw();
			} else if(selectNo == 5) {
				run = false;
			} else {
				System.out.println("숫자 1~5까지만 입력해 주세요");
			}
		}
		System.out.println("프로그램 종료.");
	}
	
	//계좌 생성
	// 정보를 받는다 (ano, owner , balance)
	// 100개의 통에서 비어있는 곳을 찾아서 사용자가 만든 정보를 저장한다. (Class는 비어있다라는 의미가 null)
	// 저장할때는 Account 라는 타입으로 저장한다.
	private static void createAccount() {
//		for(int i=0;i<accountArray.length;i++) {
//		for(int i=0;i<accountArray.size();i++) {
//			if(accountArray[i] == null) { //비어있는곳을 찾음
				// 사용자에게 입력받는 값을 Class로 만들어서 집어 넣는다.
				// ano, owner, balance
				
				// 계좌가 이미 등록되어 있으면 재등록 불가 (추가기능) findAccount를 이용
		boolean run = true;
		while(run) {		
		
				scanner.nextLine(); //전에 있던 엔터를 지움.
				System.out.print("계좌번호 : ");
				String ano = scanner.nextLine();
																								
				Account acc1 = findAccount(ano);
				if(acc1 != null && acc1.getAno().equals(ano)) {
					System.out.println("계좌번호가 중복되었습니다.");
					
				} else {
				System.out.print("계좌주 : ");
				String owner = scanner.nextLine();
				
				
				System.out.print("초기입금액 : ");
				int balance = 0;
				
				try {
					balance = scanner.nextInt();
				} catch (Exception e) { 
					
					System.out.println("숫자만 입력해주세요.");			
					scanner.nextLine();
//				} finally {
					
				}
				Account acc = new Account(ano,owner,balance);
				//System.out.println("createAccount = " + acc1.toString());
				
//				accountArray[i] = acc1;
				accountArray.add(acc);
				
				
				System.out.println("결과 : 계좌가 생성되었습니다.");
				}
				}

//				break; // 비어있는곳에 계좌를 1개 생성했으니 더이상 for를 수행 할 필요가 없다->break;
//			}
//		}
	}

	//계좌 목록
	private static void accountList() {
		// 111-111 홍길동 10000
		// 111-222 강자바 20000
		// Array는 for문을 이용하여 처리하는게 편함. array.length - 1차원 배열
		
		// 100개의 통에서 비어있지 않은 곳을 찾아서
		// ano, owner, balance 를 출력한다.
		long startTime = System.currentTimeMillis();
		
//		for(int i=0;i<accountArray.length;i++) {
//		for(int i=0;i<accountArray.size();i++) {
		for(int i=0;i<accountArray.size();i++) {
//			if (accountArray[i] != null) {
//				System.out.print(accountArray[i].getAno()+"\t");
//				System.out.print(accountArray[i].getOwner()+"\t");
//				System.out.print(accountArray[i].getBalance());
//				System.out.println();
				
				System.out.println(accountArray.get(i));
//				System.out.println(accountArray.get(i).toString()); 
//			}
		}
		long endTime = System.currentTimeMillis();
		
		System.out.println("수행시 걸린 시간은 : " + (double) (endTime-startTime)/1000);
	}
	
	//예금
	private static void deposit() {
		// 입력 : ano, balance(deposit)
		// 100개의 통에서 비어있지 않은 곳을 찾아서
		// 하나씩 꺼내본다. 꺼낸거에서 ano와 사용자가 입력한 ano가 같으면
		// 사용자가 예금한 금액을 기존 balance에 누적한다.
		scanner.nextLine();
		System.out.println("계좌번호 : ");
		String ano = scanner.nextLine();
		
		System.out.println("예금액 : ");
		int deposit = scanner.nextInt();
		
		Account acc = findAccount(ano);
		// acc에 들어올 수 있는 값은 
		// 1) 찾은 계좌정보 class 이거나
		// 2) null 이거나
		if(acc != null) {
			// 계좌 찾음
			int balance = acc.getBalance();
			balance = balance + deposit;
			acc.setBalance(balance);
			System.out.println("결과: 예금이 성공하였습니다.");
		} else {
			// 계좌 못찾음
			System.out.println("결과: 계좌를 못찾았습니다..");
		}
		
//		for(int i=0;i<accountArray.length;i++) {
//			if(accountArray[i] != null && accountArray[i].getAno().equals(ano)) {
//				// 통이 비어있지 않고, 사용자가 입력한 ano와 같은게 있으면
//				// 입금을 해야한다..
//				int balance = accountArray[i].getBalance();
//				balance = balance + deposit;
//				accountArray[i].setBalance(balance);
//				
//				//accountArray[i].setBalance(accountArray[i].getBalance()+deposit);
//				System.out.println("결과: 예금이 성공하였습니다.");
//				break; // 뒤에있는 계좌까지 볼 필요 없음.
//			}
//		}
//		System.out.println("----");
//		System.out.println("예금");
//		System.out.println("----");
//				
//		scanner.nextLine(); 
//				
//		for(int i=0;i<accountArray.length;i++) {
//			if(accountArray[i] != null) {
//				System.out.print("계좌번호 : ");
//				String ano = scanner.nextLine();
//				if (accountArray[i].getAno().equals(ano)) { 
//					System.out.print("예금액 :");
//					int deposit = scanner.nextInt();
//					int balance = accountArray[i].getBalance() + deposit;
//															
//					System.out.println("결과 : 예금이 성공되었습니다.");
//					break;
//				}
//			}
//		}
	}

	//출금
	private static void withdraw() {
		// 입력 : ano, balance(withdraw)
		// 100개의 통에서 비어있지 않은 곳을 찾아서
		// 하나씩 꺼내본다. --> Account Class가 나온다.
		// 꺼낸거에서 ano와 사용자가 입력한 ano가 같으면..
		// 사용자가 출금요청한 금액을 기존 balance에서 제한다.
		// 단, balance보다 큰 금액을 요청하면 잔액이 부족합니다. 하고 출금은 안한다.
		scanner.nextLine();
		System.out.println("계좌번호 : ");
		String ano = scanner.nextLine();
		
		System.out.println("출금액 : ");
		int withdraw = scanner.nextInt();
		
		Account acc = findAccount(ano);
		
		if(acc != null) {
			if(acc.getBalance() >= withdraw) {
			int balance = acc.getBalance();
			balance = balance - withdraw;
			acc.setBalance(balance);
			 System.out.println("결과: 출금이 성공하였습니다.");
        } else { 
           System.out.println("계좌 잔액이 모자랍니다.");
        }
     } else { 
        // 못찾았음.
        System.out.println("결과: 계좌를 못찾았습니다.");
     }

		}
//		for(int i=0;i<accountArray.length;i++) {
//			if(accountArray[i] != null && accountArray[i].getAno().equals(ano)) {
//				// 통이 비어있지 않고, 사용자가 입력한 ano와 같은게 있으면
//				// 출금을 해야한다..
//				// 출금하기전에 기존 잔고보다 많이 달라고 하면 거부한다.
//				if(accountArray[i].getBalance() >= withdraw) {
//					//출금가능
//					int balance = accountArray[i].getBalance();
//					balance = balance - withdraw;
//					accountArray[i].setBalance(balance);
//					System.out.println("결과: 출금이 성공하였습니다.");
//				} else {
//					// 잔액이 모자람.
//					System.out.println("계좌 잔액이 모자랍니다.");
//				}
//				break;
//			}	
//		}		
//	}
	
	// Account 배열에서 ano와 동일한 Account 객체 찾기
	// 접근제한자 리턴타입 메소드(파라메터) {
	 private static Account findAccount(String ano) {
		 // createAccount, deposit, withdraw, accountList 에서
		 // 중복되는 기능을 여기에 작성.
	 	 // 1) 메소드를 추가하여 전체 코드 수를 줄이는 효과
	 	 // 2) 다른곳에서 사용하려고 할때 편하게 사용할 수 있음..
//		for(int i=0;i<accountArray.length;i++) {
//		 for(int i=0;i<accountArray.size();i++) {
//			if(accountArray[i] != null && accountArray[i].getAno().equals(ano)) {
//			 return accountArray.[i];
		 for(int i=0;i<accountArray.size();i++) {
			 if(accountArray.get(i).getAno().equals(ano)) {
				 return accountArray.get(i);
		     }
//			 if(accountArray.get(i) != null && accountArray.getAno().equals(ano)) {
//				return accountArray.get(i); // 찾음. accountArray[i]에 들어있는 Class를 리턴함
							
		}		 
		return null; 
	 }
	 
	 // 기능 추가
	 // 1) 숫자입력받는곳에 문자가 들어왔을대 처리
	 //    - 메뉴가 끝난다...
	 //    - 재 입력을 받는다. 숫자일때 까지
	 // 2) 계좌 삭제 기능 추가
}

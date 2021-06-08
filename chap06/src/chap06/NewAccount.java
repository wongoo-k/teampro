package chap06;

public class NewAccount {
	
	static final int MIN_BALANCE = 0;
	static final int MAX_BALANCE = 1000000;
	
	// 필드 선언 위에 상수..
	// 생성자/필드/메소드 작성순서 없음.
	// 관행적으로
	// 1) 상수
	// 2) 필드
	// 3) 생성자
	// 4) 메소드
	// - toString() : 전체 값을 출력하는 메소드
	
	int balance; //필드
	
	NewAccount() {
		
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		
		if (balance >= MIN_BALANCE && balance <=MAX_BALANCE) {
			this.balance = balance;
		} else {
			System.out.println("입력한 값이 음수이거나 100만원을 초과합니다.");
		}
		
	}
	

	//	void setBalance(int balance) {
//		
//	}
//	
//	int getBalance() {
//		return this.balance;
//	}

	
	
	//	private int balance;
//	
//	public int getBalance() {
//		return balance;		
//	}
//	
//	public void setBalace(int balance) {
//		if(balance )
//	}

}

package chap06;

public class NewCar {
	int gas; //초기화가 자동으로 된다. 타입이 int 니까 0으로 초기화.
	
	
	
	void setGas(int gas) {
		this.gas = gas; 
		
		//isLeftGas();
		//내부 메소드에서 호출시에는 this를 붙이지 않고 메소드 이름으로 호출한다.
	}
	
	boolean isLeftGas() {
		if(this.gas==0) {
			System.out.println("gas가 없습니다.");
			return false;
		}
		System.out.println("gas가 있습니다.");
		return true;
	}
	
	void run() {
		while(true) {  // 무한루프
			if(gas > 0) {
				System.out.println("달립니다.(gas잔량 :" + gas + ")" );
				gas -= 1; // --this.gas;;
			} else {
				System.out.println("멈춥니다.(gas잔량 :" + gas + ")" );
				return;
			}
		}
	}

}

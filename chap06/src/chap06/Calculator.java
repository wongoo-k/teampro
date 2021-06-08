package chap06;

public class Calculator {
	// 리턴타입은 8가지 기본형(int~boolean) , 4가지 참조형 (Class)
	// void : 리턴안함.
	void powerOn() {
		System.out.println("전원을 켭니다.");
	}
	// 리턴타입 메소드명 { 실행코드; }
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
    double plus(double x, double y) {
    	double result = (double) x + y;
		return result;
	}
	
	double divide(int x, int y) {
		double result = (double) x / (double) y;
		return result;
	}
	
	void powerOff() {
		System.out.println("전원을 끕니다.");
	}

}

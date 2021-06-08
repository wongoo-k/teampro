package chap06;

public class Car {
	//필드
	String company = "현대자동차";
	String model = "그랜저";
	String color = "검정";
	int maxSpeed = 350;
	int speed; //자동 초기화 -->0으로
	
	// 생성자 (Constructor)
	Car() {
		// 아무거나 해도 됨
		// 변수, 연산, 조건, 반복 다 할 수 있지만
		// 초기값을 만들기 위한 작업만 한다.
		this.company = "아무것도 안함";
	}
	
	Car(String company) {
		// 사용자가 요청한 값을 넣어서 생성.
	    this.company = company;
	}
	
	Car(String model, String color, int maxSpeed) {
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}
}


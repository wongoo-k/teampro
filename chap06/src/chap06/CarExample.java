package chap06;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 타입 변수명(인스턴스명) = new 타입();
		Car myCar = new Car();
		//Car myCar = new Car("기아자동차");
		//Car myCar = new Car("제네시스", "빨강", 100);
		// 타입 변수명 : 대문자 소문자.
		// Car car;
		System.out.println("제작회사: " + myCar.company);
		System.out.println("모델명: " + myCar.model);
		System.out.println("색깔: " + myCar.color);
		System.out.println("최고속도: " + myCar.maxSpeed);
		System.out.println("현재속도: " + myCar.speed);
		
		myCar.speed = 60;
		System.out.println("수정된 속도:" + myCar.speed);
		
		if(myCar.maxSpeed >= 60) {
			System.out.println("현재 속도가 60보다 큽니다.");
		}
	}
}

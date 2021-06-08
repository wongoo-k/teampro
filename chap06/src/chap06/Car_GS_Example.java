package chap06;

public class Car_GS_Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car_GS myCar = new Car_GS();
		
		myCar.setSpeed(-50);
		
		System.out.println("현재 속도 : " + myCar.getSpeed());
		
		myCar.setSpeed(60);
		
		if(!myCar.isStop()) {
			myCar.setStop(true);
		}
		System.out.println("현재 속도 : " + myCar.getSpeed());
	}

}

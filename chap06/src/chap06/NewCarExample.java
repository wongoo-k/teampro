package chap06;

import java.util.Scanner;

public class NewCarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewCar myCar = new NewCar();
		Scanner scanner = new Scanner(System.in);
		System.out.print("gas를 투입하세요 >");
		myCar.setGas(scanner.nextInt());
		
		boolean gasState = myCar.isLeftGas();
		if(gasState) {
			System.out.println("출발합니다.");
			myCar.run();
		}
		
		if(myCar.isLeftGas()) {
			System.out.println("gas를 주입할 필요가 없습니다.");
		} else {
			System.out.println("gas를 주입하세요");
			
		}
	}

}

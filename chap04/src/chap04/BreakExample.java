package chap04;

public class BreakExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		while(true) {
			int num = (int)(Math.random()*6) + 1;
			System.out.println(num);
			if(num == 6) {
				break;
				//break; 혹은 run = false;
			}
		}
		System.out.println("프로그램 종료");
	}

}

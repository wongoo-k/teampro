package chap04;

public class WhileKeyControlExample {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		boolean run = true;
		int speed = 0;
		int keyCode = 0;
		
		while(run) {
			if(keyCode!=13 && keyCode!=10) {
				System.out.println("---------------------");
				System.out.println("1.증속  | 2.감속  | 3.중지");
				System.out.println("---------------------");
				System.out.print("선택 : ");
			}
			
			keyCode = System.in.read();
			
			if (keyCode == 49) {
				speed++;
				System.out.println("현재 속도=" + speed);
			} else if (keyCode == 50) {
				speed--;
				System.out.println("현재 속도=" + speed);
			} else if (keyCode == 51) {
				run = false;
			} else {
				System.out.println("1/2/3 셋중 하나 선택해 주세요!!"); //두줄이 출력되는 이유 : 엔터키는 컴퓨터가 \r\n 으로 인식하기 때문
			}
		}
		
		System.out.println("프로그램 종료.");
	}

}

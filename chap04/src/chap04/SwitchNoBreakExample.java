package chap04;

public class SwitchNoBreakExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int time = (int)(Math.random() * 4) + 8;
		System.out.println("[현재시간 : " + time + " 시]");
		
		switch(time) {
		  case 8:
			  System.out.println("출근합니다.");
		  case 9:
			  System.out.println("회의를 합니다.");
		  case 10:
			  System.out.println("업무를 봅니다.");
		  case 11:
			  System.out.println("퇴근하고 싶습니다.");
		}
	}

}

package chap04;

public class SwitchExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int num = (int)(Math.random() * 6) + 1;
		
		switch(num) {
		  case 1:
			  System.out.println("1번이 나왔습니다.");
			  break;
		  case 2:
			  System.out.println("2번이 나왔습니다.");
			  break;
		  case 3:
			  System.out.println("3번이 나왔습니다.");
			  break;
		  case 4:
			  System.out.println("4번이 나왔습니다.");
			  break;
		  case 5:
			  System.out.println("5번이 나왔습니다.");
			  break;
		  case 6:
			  System.out.println("6번이 나왔습니다.");
			  break;
		  default: //아무 조건에도 해당하지 않으면... 여기를 수행 (생략이 가능)
			  System.out.println("에러입니다.");
		 }
	}

}

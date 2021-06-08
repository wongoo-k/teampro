package chap04;

public class SwitchCharExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char grade = 'c';
		
		switch(grade) {
		   case 'A':
		   case 'a':
			   System.out.println("우수 호갱입니다.");
			   break;
		   case 'B':
		   case 'b':
			   System.out.println("일반 호갱입니다.");
			   break;
		   default:
			   System.out.println("호갱입니다.");
				   
		}

	}

}

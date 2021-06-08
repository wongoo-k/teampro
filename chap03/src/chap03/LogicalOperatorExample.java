package chap03;

public class LogicalOperatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int charCode = 'A'; //A는 아스키코드로 65
				
		if( (charCode>=65) && (charCode<=90) ) {
			System.out.println("대문자 이군요");
		}
		
		if( (charCode>=97) && (charCode<=122) ) {
			System.out.println("소문자 이군요");
		}
		
		if( !(charCode<48) && !(charCode>57) ) {
			System.out.println("0~9 숫자 이군요");
		}
		
		int value = 12;
		// == : 같다
		// != : 다르다
		// = : 값을 넣어라. 오른쪽에 있는 값을 왼쪽으로 넣어라
		if ( value%2 == 0)	
		
		if( (value%2==0) || (value%3==0) ) {
			System.out.println("2 또는 3의 배수 이군요");
		}
		
		if( (value%2==0) && (value%3==0) ) {
			System.out.println("2 의 배수 이면서 3의 배수 이군요");
		}
	}
		

}

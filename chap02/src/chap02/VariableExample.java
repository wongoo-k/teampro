package chap02;

public class VariableExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// : 한줄짜리 주석(설명서)
		/*
		 * : 여러줄짜리 주석
		 *  */
		
		// 변수 선언 2가지
		// 변수 선언이란? *1)타입 변수명; or *2)타입 변수명=값;
		// *1) 선언만
		// int value;
		// value = 10;
		
		// *2) 선언과 동시에 초기화
		int value = 10;
		
		// 연산순서는 = 을 기준으로 오른쪽에 연산한 값을 왼쪽으로 넣는다. 사람과 반대방향
		int result = value + 10;
		
		// 블록(중괄호 {}) 내에서는 중괄호로 시작해서 중괄호로 끝나는 변수선언은 중복이 되면 안된다.
		
		System.out.println(result);
	}

}
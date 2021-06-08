package chap02;

public class VariableScopeExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int v1 = 15;
		
		//중괄호 블럭내에서 선언한 변수는 중괄호 밖에서는 사용이 불가. v2
		// --> Cannot be resolved = 변수문제.
		//중괄호 블럭밖에서 선언한 변수는 중괄호 내에서는 사용이 가능. v1
		
		int v2 = 0; // 초기화 할까말까? v1-10을 줄꺼지만, 0으로 초기화
		if(v1>10) {
			 v2 = v1 - 10;
		}
		
		int v3 = v1 + v2 + 5;
	}

}

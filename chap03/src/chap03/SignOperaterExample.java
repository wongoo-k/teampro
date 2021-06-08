package chap03;

public class SignOperaterExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = -100;
		int result1 = +x;  //-100 유지
		int result2 = -x;  // -- = + 100으로 변경
		
		System.out.println("result1 = " + result1);
		System.out.println("result2 = " + result2);
		
		short s = 100;
		//short result3 = -s; // 기본연산은 10진수 와 int
		int result3 = -s;
		System.out.println("result3 = " + result3);
	}

}

package chap03;

public class ArithmeticOperatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int v1 = 5;
		int v2 = 2;
		
		int result1 = v1 + v2;
		System.out.println("result1 = " + result1);
		
		int result2 = v1 - v2;
		System.out.println("result2 = " + result2);
		
		int result3 = v1 * v2;
		System.out.println("result3 = " + result3);
		
		int result4 = v1 / v2;
		System.out.println("result4 = " + result4);
		
		int result5 = v1 % v2;
		System.out.println("result5 = " + result5);
		
		double result6 = (double) v1 / v2; //앞에 (double) 을 쓴 것이 Casting 이라 한다.(타입강제변환)
		System.out.println("result6 = " + result6);
		
		float result7 = (float) v1 / v2; 
		System.out.println("result7 = " + result7);
		
	}

}

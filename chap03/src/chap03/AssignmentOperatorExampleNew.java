package chap03;

public class AssignmentOperatorExampleNew {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int result = 0;
		result = result + 10;
		//축약버전 : result += 10;
		System.out.println("result= " + result);
		result -= 5;
		System.out.println("result= " + result);
		result *= 3;
		System.out.println("result= " + result);
		result /= 5;
		System.out.println("result= " + result);
		result %= 3;
		System.out.println("result= " + result);
	}

}

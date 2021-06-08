package chap11;

public class StringSubstringExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String snn = "880815-1234567 ";
		
		String firstNum = snn.substring(0, 6);
		System.out.println(firstNum);
		
		String secondNum = snn.substring(7);
		System.out.println(secondNum);
	}

}

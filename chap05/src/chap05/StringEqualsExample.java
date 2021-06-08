package chap05;

public class StringEqualsExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String strVar1 = "강원구";
		String strVar2 = "강원구";
		
		if(strVar1.equals(strVar2)) {
			System.out.println("strvar1과 strvar2는 문자열이 같음");
		}
						
		String strVar3 = new String ("강원구");
		String strVar4 = new String ("강원구");
		
		if(strVar3.equals(strVar4)) {
			System.out.println("strvar3과 strvar4는 문자열이 같음");
		}
	}

}

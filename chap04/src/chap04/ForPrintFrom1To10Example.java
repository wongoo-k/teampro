package chap04;

public class ForPrintFrom1To10Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int i=1; i<=10 ; i++) { // 10번 반복
			System.out.println(i);
			
			if( i%2 ==0) { 
				System.out.println("짝수");
			}
		}
	}

}

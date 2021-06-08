package chap03;

public class Exercise05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int value = 365;
		System.out.println(value/100*100); //int 타입은 실수(소수)를 생략
		System.out.println(value - (value % 100));

		
		// 356이라면 300이 나올 수 있도록..(뒤에 두자리를 자르는 방법)
		// 1) 300 = 356 - 56;
		// 2) (int)기준 356 / 100 = 3 , 356 / 10 = 35 , 356 / 1 = 356
		// 3) 356 % 100 = 56 , 356 % 10 = 6
		
		//int result = value - (value % 100);
		//value = value - (value % 100);
		
		//최종 형태
		//value-= (value % 100);
		//System.out.println(value);
	}

}

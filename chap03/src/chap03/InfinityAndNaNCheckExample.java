package chap03;

public class InfinityAndNaNCheckExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 5;
		double y = 0.0;
		
		//double z = x / y;   // 5 / 0 즉 Infinite (무한대)
		double z = x % y;	// 5 % 0 즉 NaN (Not a Number)
		
		System.out.println(Double.isInfinite(z));
		System.out.println(Double.isNaN(z));
		
		//잘못된 코드
		System.out.println(z + 2 );
	}

}

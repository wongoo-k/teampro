package chap03;

public class OverFlowExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 1000000;
		int y = 1000000;
		int z = x * y;
		System.out.println(z);
		
		
		int a = 2147483647;
		System.out.println(a);
		System.out.println(a + 1);

		int b = -2147483648;
		System.out.println(b);
		System.out.println(b - 1);
		
		long xx = 1000000;
		long yy = 1000000;
		long zz = xx * yy;
		System.out.println(zz);
	}

}

package chap06;

public class SystemTimeExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		long time1 = System.currentTimeMillis();
		
		int sum = 0;
		for(int i=1; i<1000000; i++) {
			sum += i;
		}
		
		long time2 = System.currentTimeMillis();
		
		System.out.println("1~1000000 까지의 합: " + sum);
		System.out.println("계산에 " + (double)(time2-time1)/1000 + "초가 소요되었습니다.");
	}

}

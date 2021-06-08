package chap04;

public class Exercise03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int sum = 0;
		
		//for, while, do-while 100번이라고 정했으니... for
		for (int i=1; i<=100; i++) { // for(int i=0; i<100; i++) <-- 100번 반복..
			if (i%3 == 0) { // 3의 배수
				sum = sum + i;
			}
		}
		
		System.out.println("3의 배수 총합 : " + sum);
		
		// while ---------------------- 초기식, 조건식, 증감식..
		sum = 0; // sum은 초기화 , 누적용..
		int ii = 0;
		while(ii <= 100) { //조건식
			if(ii%3 ==0) {
				sum = sum + ii;
			}
			ii++; //증감식
		}
		System.out.println("while 3의 배수 총합 : " + sum);
		
		// do-while -------------------- 초기식, 조건식, 증감식.
		sum = 0;
		int iii = 0;
		do {
			iii++; // 여기에 있는경우 하고 if문 밑에 있는경우 마지막 숫자를 처리 못할 수 있다.
			
			if(iii%3 ==0) {
				sum = sum +iii;
			}
			
		}while(iii <=100);
		System.out.println("do-while 3의 배수 총합 : " + sum);
	}

}

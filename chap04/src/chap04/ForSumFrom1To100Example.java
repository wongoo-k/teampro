package chap04;

public class ForSumFrom1To100Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 int sum = 0;
		 int i = 0;
		 for(i=1; i<=100; i++) {  //처음 코드를 제작할때 i=1, 1=2... 처럼 테스트 해보길 권장
			 sum += i;
		 }
		 
		 System.out.println("1~"+ (i-1) +"합 : " + sum);
	}

}

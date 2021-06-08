package chap05;

public class Exercise07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] array = {1,5,3,8,2};
		
		System.out.println("array[0] : " + array [0]);
		System.out.println("array[1] : " + array [1]);
		System.out.println("array[2] : " + array [2]);
		System.out.println("array[3] : " + array [3]);
		System.out.println("array[4] : " + array [4]);
		
		int sum = 0;
		for(int i=0; i<array.length; i++) {
			sum += array[i];
		}
		System.out.println("sum : " +sum);
		double avg = (double) sum / array.length;
		System.out.println("avg : " + avg);
		
		// for문을 이용하여 max 구하기
		// 규칙 : max 는 array에 있는 값보다 제일 작아야 함. ex) -999....
		// 방법 : max 와 array[i]를 비교해서 array[i]값이 크면 max에 넣는다.
		
		int max = 0;
		for(int i=0; i<array.length; i++) {
			if(max<array[i]) { max = array[i]; }
		}
		System.out.println("max : " + max);
		
		// for문을 이용하여 min 구하기
		// 규칙 : min 은 array에 있는 값보다 제일 커야함. ex) 999....
		// 방법 : min 과 array[i]를 비교해서 array[i]값이 작으면 min에 넣는다.
		
		int min = 999;
		for(int i=0; i<array.length; i++) {
			if(min>array[i]) { min = array[i]; }
		}
		System.out.println("min : " + min);
		

	}

}

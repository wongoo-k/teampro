package chap05;

public class ArrayCreateByValueListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] scores = {83, 90, 87 };
		
		// 1)타입[] 변수명 = {초기값...};
		// 2)타입[] 변수명 = new 타입[길이]
		//         변수명[인덱스] = 값;
		
		System.out.println("scores[0] : " + scores[0]);
		System.out.println("scores[1] : " + scores[1]);
		System.out.println("scores[2] : " + scores[2]);
		
		int sum = 0;
		for(int i=0; i<scores.length; i++) { //대상이 변형적이고 많을땐 변수명.length; 를 쓴다.
			sum += scores[i];
		}
		System.out.println("총합 : " + sum);
		double avg = (double) sum / scores.length;
		System.out.println("평균 : " + avg);
	}

}

package chap03;

public class Exercise06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int lengthTop = 5;
		int lengthBottom = 10;
		int height = 7;
		double area = ((lengthTop + lengthBottom) * height / 2.0);
		double area2 = ((double) (lengthTop + lengthBottom) * height / 2);

		System.out.println(area);
		System.out.println(area2);

		
		// 사다리꼴 구하는 공식 (윗변 + 아랫변) * 높이 / 2
		// 이 수식의 결과값이 정수 ? 실수 ?
		// 5=>5.0 , 5.5 , 7=>7.0
		// 실수를 저장할 수 있는 Type은 float , double
		// casting을 안하고 기본적으로 정수가 들어가면 int, 소수점이 들어가면 double로 연산된다.
	}

}

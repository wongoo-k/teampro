package chap02;

public class IntExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int var1 = 10;
		
		System.out.println(var1);
		
		// 최대 숫자인 21억을 넘겨보기.
		// 숫자의 특성은 -2147483648 ~ 0 ~ 2147483647 이 들어 갈 수 있는데
		// 2147483647보다 큰 수가 올 경우에는 -2147483648 부터 카운트를 다시 한다.
		// -2147483648 보다 작은 수가 올 경우 +2147483647 부터 카운트를 다시 한다.
		// 고로 21억이 넘으면 사람이 계산하는 방법과 컴퓨터가 계산하는 방법은 다르다.
		// 21억이 넘는 숫자를 다룰때는 long 타입 변수를 사용해라. 2^63만큼 숫자가 저장된다.
		var1 = var1 + 2147483647;
		System.out.println(var1);
	}

}

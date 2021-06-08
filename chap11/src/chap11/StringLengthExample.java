package chap11;

public class StringLengthExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ssn = "나나나나나나나나나나나나나";
		int length = ssn.length();
		if(length == 13) {
			System.out.println("주민번호 자리수가 맞습니다.");
		} else {
			System.out.println("주민번호 자리수가 틀립니다.");
		}
	}

}

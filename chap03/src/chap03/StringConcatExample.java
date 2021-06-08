package chap03;

public class StringConcatExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str1 =  "JDK" + 6.0; //double qouted("")는 문자열.. concat (이어붙인다)
		String str2 = str1 + "특징";
		System.out.println(str2);
		
		String str3 = "JDK" + 3 + 3.0;
		String str4 =  3 + 3.0 + "JDK";
		System.out.println(str3);
		System.out.println(str4);
		
		// =을 기준으로 ""가 나오면 뒤에 나오는 애들은 무조건 이어붙임..
		
		String str5 = "JDK" + (3 + 3.0);
		System.out.println(str5);

	}

}

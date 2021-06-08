package chap06;

public class MemberExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member user1 = new Member ("홍길동", "hong");
		
		Member user2 = new Member ("박자바", "park");
		
		Member user3 = new Member ("강자바", "kang", "123a", 30);
		
		System.out.println(user1.toString());
		System.out.println(user2.toString());
		System.out.println(user3.toString());
		
	}

}

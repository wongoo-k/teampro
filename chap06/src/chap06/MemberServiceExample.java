package chap06;

public class MemberServiceExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberService memberService = new MemberService(); 
		// memberService : 인스턴스 (instance)
		// 인스턴스.필드 or 인스턴스.메소드
		boolean result = memberService.login("hong", "512345");
			
		if(result) {
			System.out.println("로그인 되었습니다.");
			memberService.logout("hong");
		} else {
			System.out.println("id 또는 password가 올바르지 않습니다.");
		}
	}

}



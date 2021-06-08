package chap06;

public class MemberService {
	// 필드
	String id;
	String password;
	// 생성자
	// 없으면 컴파일러가 자동생성
	MemberService() { }
	
	//메소드 만드는 방법 2가지
	// 1)
	boolean login(String id, String password) {
		// 1) 기본형 변수 8가지를 비교할때는 == , !=
		// 2) 참조형 변수 4가지를 비교할때는 . equals(비교대상)
		// 3) 조건이 두개가 동시에 만족하려면 && , 둘중 하나만 만족하려면 ||
		if("hong".equals(id) && "12345".equals(password)) {
			return true;
		}
		return false;
	}
	
	void logout(String id) {
		System.out.println(id + "로그아웃 되었습니다.");
	}
		
	
}
	/*String id;
	String password;
	String login;
	
	public MemberService(String id, String password) {
		this.password = "12345";
		this.id = "hong";
	}
	
	void login(String login) {
		this.login = login;
	}
	
	boolean login() {
		if(id.equals("hong"));
		if(password.equals("12345"));
		return true;
	
	} */
	


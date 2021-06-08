package chap06;

public class Member {
	String name;
	String id;
	String password;
	int age;
	
	// 생성자...
	// Class와 동일...
	
	public Member(String name, String id) {
		this.name = name;
		this.id = id;
	}
	
	public Member(String name, String id, String password, int age) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.age = age;
	}
	//ToString (마우스 오른쪽 클릭 -> source -> 
	@Override
	public String toString() {
		return "Member [name=" + this.name + ", id=" + this.id + ", password=" + this.password + ", age=" + this.age + "]";
	}
}

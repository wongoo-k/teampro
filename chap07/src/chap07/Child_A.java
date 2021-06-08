package chap07;

public class Child_A extends Parent_A {
	private String name;
	
	public Child_A() {
		this("홍길동");
		System.out.println("Child_A() call");
	}
	
	public Child_A(String name) {
		this.name = name;
		System.out.println("Child_A(String name) call");
	}
}

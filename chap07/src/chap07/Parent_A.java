package chap07;

public class Parent_A {
	public String nation;
	
	public Parent_A() {
		this("대한민국");
		System.out.println("Parent_A() call"); 
	}
	
	public Parent_A(String nation) {
		this.nation = nation;
		System.out.println("Parant_A(String nation) call");
	}
}

package chap07;

public class Child extends Parent {
	// 생성자 자동으로 생성. 컴파일러가 생성
	// super();
	@Override
	public void method2() {
		System.out.println("Child-method2()");
	}
	
	public void method3() {
		System.out.println("Child-method3()");
	}
}

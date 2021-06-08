package chap07;

class A {}

class B extends A {}
class C extends A {}

class D extends B {}
class E extends C {}

public class PromotinExample {
	public static void main(String[] args) {
		B b = new B();
		C c = new C();
		D d = new D();
		E e = new E();
		
		A a1 = b;
		A a2 = c;
		A a3 = d;
		A a4 = e;
		
		B b1 = d;
		C c1 = e;
		
		//B b3 = e;  e는 b와 상속 관계가 아니다. 에러
		//C c2 = d;  d는 c와 상속 관계가 아니다. 에러
	}

}

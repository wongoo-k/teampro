package chap07;

public class ChildExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Child child = new Child();
		
		Parent parent = child;
		parent.method1();
		parent.method2();
		//parent.method3(); (부모는 자식의 method3 호출 불가능)
		child.method3(); //자식은 method3 가능
	}

}

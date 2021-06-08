package chap06;

public class PrinterExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Printer printer = new Printer();
//		// 이름이 같은데 파라메터가 다른거..
//		// Overloading (메소드 오버로딩)
		printer.println(10);
		printer.println(true);
		printer.println(5);
		printer.println(5.7);
		printer.println("홍길동");
		
		// 원래는 Class이름 변수이름 = new Class이름();
		// Class이름.method
//		Printer.println(10);
//		Printer.println(true);
//		Printer.println(5.7);
//		Printer.println("홍길동");
		
	}

}

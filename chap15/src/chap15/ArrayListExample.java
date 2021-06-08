package chap15;

import java.util.ArrayList;
import java.util.List;

public class ArrayListExample {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		// 순차적으로 저장한다.. 뭘? String타입을 " 문자열 " 왜 List로 new 안했나? List는 Interface이기 때문에
		
		list.add("Java"); // accountArray[0]="Java";  accountArray[i] = new Account(...);
		list.add("JDBC"); // accountArray[1]="JDBC";
		list.add("Servlet/JSP"); // accountArray[2]="Servlet/JSP";
		list.add(0, "Database"); // accountArray[2]="Database";  accountArray[3]="Servlet/JSP";
		list.add("iBATIS"); // accountArray[4]="iBATIS";
		
		int size = list.size();
		System.out.println("총 객체수: " + size);
		System.out.println();
		
		String skill = list.get(0);
		System.out.println("0: " + skill);
		System.out.println();
		
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ":" + str);
		}
		System.out.println();
		
		list.remove(2);
		list.remove(2);
		list.remove("iBATIS");
		
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ":" + str);
			
		}
		
		// Array (배열) 는 크기가 정해지면.. 크기는 건드리지 않는다.
		// ArrayList (Collection)은 크기가 바뀐다.. add 늘어나고.. remove 하면 줄어들고..
		// --> index가 바뀐다.
	}
}

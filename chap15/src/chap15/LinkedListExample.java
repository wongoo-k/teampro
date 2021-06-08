package chap15;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class LinkedListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<String> list1 = new ArrayList<String>();
		List<String> list2 = new LinkedList<String>();
		
		long startTime;
		long endTime;
		
		startTime = System.currentTimeMillis();
		for(int i=0; i<100000; i++) {
			list1.add(0, String.valueOf(i));
//			list1.add(String.valueOf(i));
		}
		endTime = System.currentTimeMillis();
		System.out.println("ArrayList 걸린시간: " + (endTime-startTime) + " ms");
		
		startTime = System.currentTimeMillis();
		for(int i=0; i<100000; i++) {
			list2.add(0, String.valueOf(i));
//			list2.add(String.valueOf(i));
		}
		endTime = System.currentTimeMillis();
		System.out.println("(맨앞에서부터 추가)LinkedList 걸린시간: " + (endTime-startTime) + " ms");
		
		startTime = System.currentTimeMillis();
		for(int i=0; i<100000; i++) {
//			list2.add(0, String.valueOf(i));
			list2.add(String.valueOf(i));
		}
		endTime = System.currentTimeMillis();
		System.out.println("(맨뒤에서부터 추가)LinkedList 걸린시간: " + (endTime-startTime) + " ms");
	}

}

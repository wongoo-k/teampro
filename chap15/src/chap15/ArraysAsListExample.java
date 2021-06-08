package chap15;

import java.util.Arrays;
import java.util.List;

public class ArraysAsListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<String> list1 = Arrays.asList("홍길동", "신용권", "감자바");

		for(int i=0; i<list1.size(); i++) {  //for(int i=0; i<accountArray.length; i++) {
			System.out.println("원래 for문 = " + list1.get(i));
			if(i%2 != 0) {
				System.out.println("홀수 ");
			}
		}
		// 향상된 for문 : 전체를 출력할때 index가 필요없을때
		for(String name: list1) {
			System.out.println(name);	
		}
		
		List<Integer> list2 = Arrays.asList(1, 2, 3);
		for(int value : list2) {
			System.out.println(value);
		}
		
		for(Integer value : list2) {
			System.out.println(value);
		}
	}
}

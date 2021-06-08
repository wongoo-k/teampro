package chap06;

public class StudentExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 클래스 변수명 = new 클래스();
		//     (인스턴스)
		Student s1 = new Student();
		System.out.println("s1 변수가 Student 객체를 참조합니다.");
		
		Student s2 = new Student();
		System.out.println("s2 변수가 Student 객체를 참조합니다.");
		
		// Array
		// int[] score = {10,10,30};
		Student[] students = {new Student(), new Student() };
		Student[] ss = new Student[100];
		for(int i=0;i<ss.length;i++) {
			ss[i] = new Student();
		}
	}

}

package chap06;

public class KoreanExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Korean k1 = new Korean("박자바", "1231231-23123123");
		
		System.out.println("k1 name : " + k1.name);
		System.out.println("k1 ssn : "+ k1.ssn);
		
		Korean k2 = new Korean("김자바", "4534533-142323");
		System.out.println("k2 name : " + k2.name);
		System.out.println("k2 ssn : "+ k2.ssn);
		
		Korean k3 = new Korean("이자바", "78373123-123123");
		System.out.println("k3 name : " + k3.name);
		System.out.println("k3 ssn : " + k3.ssn);
		
		Korean k4 = new Korean("강자바", "835123-123123");
		System.out.println("k4 name : " + k4.name);
		System.out.println("k4 ssn : " + k4.ssn);

	}

}

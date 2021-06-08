package chap03;

public class Exercise04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int pencils = 534;
		int students = 30;
		
		//학생 한 명이 가지는 연필 수
		String pencilsPerStudent = (pencils / students + "개");
		System.out.println(pencilsPerStudent);
		
		//남은 연필 수
		String pencilsLeft = (pencils % students + "개");
		// 1) 나머지 구하기 연산 (% --> mod)
		// 2) 전체연필 - (학생한명이 가지는 연필수*학생수)
		System.out.println(pencilsLeft);
		
		
	}
}

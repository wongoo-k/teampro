package chap04;

public class Exercise05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//10회 * 10회 반복 (이중for문)
		for(int x=1;x<=10;x++ ) {
			for(int y=1;y<=10;y++) {
				// 10*10회 반복 100회..
			    if((4*x) + (5*y) == 60) {
			    	System.out.println("("+x+","+y+")");
			    }
			}
		}    
    }
}

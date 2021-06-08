package chap04;

public class Exercise06 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int x=0; x<=5; x++) { 
			for(int y=0; y<x; y++) { 
			 System.out.print("*");
			}System.out.println();
			
		}for(int x=0; x<=5; x++) {  //x는 5회 회전 , 0-1-2-3-4
			for(int y=0; y<(5-x); y++) { // y는 1회전일때 5번, 2회전일때 4번...
			// for(int y=5; y>x; y--) 
				System.out.print("*");
			}System.out.println(); 			
		}
		for(int x=0; x<=5; x++) { 
			for(int y=0; y<5; y++) { 
			 System.out.print("*");
			}System.out.println();  
				
		}
	}

}

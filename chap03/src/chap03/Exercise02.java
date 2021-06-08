package chap03;

public class Exercise02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 10;
		int y = 20;
		
		int z = (++x) + (y--);  //x=11, y=20, z=31 이후 y=19
		// 풀어 쓰면 
		//int z;
		//x = x + 1; // x+=1 or ++x or x++;
		//z = x + y; // 대체없음
		//y = y - 1; // y-=1 or --y or y--;				
		System.out.println(z);
		
		}

}

package chap03;

public class IncreaseDecreaseOperatorExampleNew {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x;
		x = 10;
		int y;
		y = 10;
		int z; //값은 미정
		
		System.out.println("---------");
		x= x + 1;  //x=x+1;  or  x+=1;
		x= x + 1;  //x=x+1;  or  x+=1;
		// 1항연산자 ++ or -- 단독으로 쓸때 (=이 없을때) 앞뒤 순서에 관계없이 1을 증가시킨다.
		System.out.println("x=" + x);
		
		System.out.println("---------");
		y= y - 1;
		y= y - 1;
		System.out.println("y=" + y);
		
		System.out.println("---------");
		z = x;	//x=13은 당연한데.. z=12를 넣을꺼냐, 혹은 1증가시킨 13을 넣을꺼냐..
		x = x + 1;
		// =이 나오고 ++이 뒤에 있으면 z를 x에 먼저 값을 넣고, 그 다음에 x를 1증가시킨다.
		System.out.println("z=" + z);
		System.out.println("x=" + x);
		
		System.out.println("---------");
		z = x + 1;
		x = z;
		// =이 나오고 ++이 앞에 있으면 x를 1 증가시킨 후 , z에 x값을 넣는다.
		System.out.println("z=" + z);
		System.out.println("x=" + x);
		
		System.out.println("---------");
		//z = ++x + y++; 풀어쓰면 밑의 값. 순서에 유의.
		x = x + 1;
		z = x + y;
		y = y + 1;
		System.out.println("z=" + z);
		System.out.println("x=" + x);
		System.out.println("y=" + y);
	}
	
}

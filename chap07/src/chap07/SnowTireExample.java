package chap07;

public class SnowTireExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Tire_A tire_A = new SnowTire();
		tire_A.run();

//		SnowTire snowTire = (SnowTire) tire_A;
//		snowTire.run();
		
		
//		Tire_A tire_A = new Tire_A();
//		SnowTire snowTire = (SnowTire) tire_A;
		
		
		// tire_A는 부모라  snowTire를 모름
		// 책324 참고 
		
		SnowTire snowTire1 = (SnowTire) tire_A;
		snowTire1.run();
	}

}	// 

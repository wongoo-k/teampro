package chap08;

public class DriverExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Driver driver = new Driver();
		
		Bus bus = new Bus();
		Taxi taxi = new Taxi();
		Bike bike = new Bike();
		
		driver.drive(bus);
		driver.drive(taxi);
		driver.drive(bike);
	}

}

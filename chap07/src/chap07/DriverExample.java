package chap07;

public class DriverExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Driver driver = new Driver();
		
		Bus bus = new Bus();
		Taxi taxi = new Taxi();
		
		driver.drive(bus);
		driver.drive(taxi);
		
		Vehicle vehicle = new Vehicle();
		driver.drive(vehicle);
		
		vehicle = bus;
		driver.drive(vehicle);
		
		vehicle = taxi;
		driver.drive(vehicle);
	}

}

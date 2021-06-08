package chap06;

public class NewAccountExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewAccount newaccount = new NewAccount();
		
		newaccount.setBalance(10000);
		System.out.println("현재 잔고 : " + newaccount.getBalance());
		
		newaccount.setBalance(-100);
		System.out.println("현재 잔고 : " + newaccount.getBalance());
		
		newaccount.setBalance(2000000);
		System.out.println("현재 잔고 : " + newaccount.getBalance());
		
		newaccount.setBalance(300000);
		System.out.println("현재 잔고 : " + newaccount.getBalance());

	}

}

package chap07;

public class DmbCellPhone extends CellPhone {
	int channel;
	
	DmbCellPhone(String model, String color, int channel) {
		super(); //---> 없으면 자동으로 생성, 위치는 항상 여기
		this.model = model;
		this.color = color;
		this.channel = channel;
	
	}
	// 메소드를 변경(Override)
	@Override
	void hangUp() { System.out.println("DMB 전화를 끊습니다."); }
	// 메소드를 추가..
	void turnOnDmb() {
		System.out.println("채널 " + channel + "번 DMB 방송 수신을 시작합니다.");
	}
	void changeChannelDmb(int channel) {
		this.channel = channel;
		System.out.println("채널 " + channel + "번 으로 바꿉니다.");
	}
	void turnOffDmb() {
		System.out.println("DMB 방송 수신을 멈춥니다.");
	}

}

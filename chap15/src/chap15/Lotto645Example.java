package chap15;

public class Lotto645Example {

	static final int GAME_COUNT = 10000;
	static int[] gameHistory = new int[GAME_COUNT];
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 로직(Logic)
		// 로또 프로그램이 전체 적으로 무슨일을 해야 하나? 
		// 1) 사람 뽑고
		// 2) 컴퓨터 뽑고
		//    - 같은 번호 뽑으면 ? 
		//    - 어디에 저장하지 ? class 변수 ? 
		// 3) 서로 비교해서 등수 추첨하고 
		// 4) 게임 히스토리 저장하고

		// 문법 (Syntax)
		boolean run = true;
		boolean bonusCount = false;
		int runCount=0;
		int prizeCount=0;

		while(run) { 
			// game Start
			Lotto645 user = new Lotto645(true);
			user.userMakeNumber();
			System.out.println("USER = " + user.toString());

			Lotto645 com = new Lotto645(false);
			com.comMakeNumber();
			System.out.println("COM = " + com.toString());
			// user 하고  com하고 비교 
			for(int i=0;i<com.lottoNum.length;i++) {
				for(int j=0;j<user.lottoNum.length;j++) {	
					// here 		 	        	 	         	 
					if(com.lottoNum[i] == user.lottoNum[j]) { 
						//if(i == j) {
						prizeCount++;
						System.out.println("맞은숫자: " + prizeCount);
						//	        			 if(com.bonusNum == user.bonusNum) {
						//	        				 bonusCount = true;
						//	        				 System.out.println("2등 확률 업!!");
						//	        			 } else {
						//	        		     }
						//	        	     } else {
						//	        	     }
					}
				}
			}

			// 여기서 보너스 번호 체크도 
			for (int i=0; i<user.lottoNum.length;i++) { 
				if(com.bonusNum == user.lottoNum[i]) {
					bonusCount = true;
					System.out.println("2등 확률 업!!");
				}
			}
			switch(prizeCount) {

			case 2:
				System.out.println("아쉽게꽝입니다");
				gameHistory[runCount] = 0;
				break;
			case 3:
				System.out.println("5등입니다");
				gameHistory[runCount] = 5;
				break;
			case 4:
				System.out.println("4등입니다");
				gameHistory[runCount] = 4;
				break;
			case 5:
				// 여기서 보너스 번호 맞으면 2등
				if (prizeCount == 5 && bonusCount == true) {
					System.out.println("!!!2등입니다!!!");
					gameHistory[runCount] = 2;
				} else { 
					System.out.println("3등입니다");
					gameHistory[runCount] = 3;
				}
				break;
			case 6:
				System.out.println("***1등입니다***");
				gameHistory[runCount] = 1;
				break;
			default :
				System.out.println("꽝입니다");
				gameHistory[runCount] = 0;
				break;
			}
			prizeCount = 0;
			bonusCount = false;



			// 당첨번호 3개면 5등
			// 당첨번호 4개면 4등
			// 당첨번호 5개면 3등 
			// 당첨번호 5+보너스이면 2등
			// 당첨번호 6개이면 1등

			// 게임결과를 Array에 저장
			runCount++;
			if (runCount >= GAME_COUNT) { run = false; }
		}
		// 줄맞춤 잘하시고
		// 뭐 하는중 ? 출력결과 확인하고 있었어요 
		// 전체 게임결과출력 
		for(int i=0;i<gameHistory.length;i++) { // gameHistory.length 
			if(gameHistory[i]>0) {
				System.out.println(i + " 번째 게임은 " + gameHistory[i] + "등 입니다");	
			}		         
		}
	}	
}
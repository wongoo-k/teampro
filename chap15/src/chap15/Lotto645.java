package chap15;

import java.util.Arrays;

public class Lotto645 {
   int[] lottoNum = new int[6]; // 0으로 6개 초기화
   int bonusNum = 0 ; // 사용자는 뽑지않고 , 컴퓨터만 뽑음.
   int MAXNUM = 45;
   boolean isUser = false; // false이면 com

   public Lotto645(boolean isUser) {
      // TODO Auto-generated constructor stub
      if(isUser) { // true 사용자 
         this.isUser = true;
      } else { 
         this.isUser = false;
      }
   }
   
   public void userMakeNumber()  { 
	      int num = 0;
	      for(int i=0;i<lottoNum.length;i++) { 
	         // while문으로 바꾸면 6개가 채워졌음. 0은 아니야..
	         // 한개 뽑고..
	         num = (int) (Math.random()*MAXNUM)+1; // 1부터 45개 1

	         // 중복 체크하고 
	         // checkDup해서 1이 나오면 continue 
	         //             0이 나오면 i-- (기존 증가한 i를 하나 빼줘야함)
	         if( checkDup(num) == 1) { // return 1이 왔다는 얘기는 중복이 없단 얘기 . 
	            lottoNum[i] = num;
	         } else {  // return 0이 왔단 얘기 중복이 있단 얘기.
	            i=i-1; // index를 임의로 조정
	         }
	      }
   }
   
   public void comMakeNumber()  { 
      int num = 0;
      for(int i=0;i<lottoNum.length;i++) { 
         // while문으로 바꾸면 6개가 채워졌음. 0은 아니야..
         // 한개 뽑고..
         num = (int) (Math.random()*MAXNUM)+1; // 1부터 45개 1

         // 중복 체크하고 
         // checkDup해서 1이 나오면 continue 
         //             0이 나오면 i-- (기존 증가한 i를 하나 빼줘야함)
         if( checkDup(num) == 1) { // return 1이 왔다는 얘기는 중복이 없단 얘기 . 
            lottoNum[i] = num;
         } else {  // return 0이 왔단 얘기 중복이 있단 얘기.
            i=i-1; // index를 임의로 조정
         }
      }

      // 정상적으로 6개가 다 뽑히면 
      // if(사용자이면 )  { 뽑지말고 리턴} 사용자이면 어떻게 알지 ?
      // 뽑았지만 사용안하면 됨.. 
      // 보너스 번호 
      do { 
         // 번호는 1개 뽑아야 하고.. 
         num = (int) (Math.random()*MAXNUM)+1;
      } while (checkDup(num) != 1);
      bonusNum = num;

      return ;
   }

   public int checkDup(int num) { 
      //  public boolean checkDup(int num) { 
      // 새로 뽑은 숫자하나를 받아서 

      // 기존 lottoNum Array랑 비교해서 
      // 같은게 있으면 0을 리턴 
      // 다르면 1을 리턴
      for(int i=0;i<lottoNum.length;i++) { // 0개만 비교, 1개 , 2개 ,3개
         // lottoNum[0] = null .lottoNum[1] = null ~ lottoNum[5] = null;
         //System.out.println(i + " = " + lottoNum[i]);
         if(lottoNum[i] !=0 && lottoNum[i] == num) { 
            // 같으면 중복임.. 
            // 그냥 리턴... 
            return 0;
         } else { 
            // 아니면 중복아님.. return 못해.. 남아 있는게 중복일수 있으니.. 
         }
      }
      return 1; // 중복아님.. 
   }

   @Override
   public String toString() {
      if(this.isUser) { // 사용자이면 
         return "Lotto645 [lottoNum=" + Arrays.toString(lottoNum);

      } else { 
         return "Lotto645 [lottoNum=" + Arrays.toString(lottoNum) + ", bonusNum=" + bonusNum + "]";
      }
   }


}
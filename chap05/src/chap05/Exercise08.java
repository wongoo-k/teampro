package chap05;

public class Exercise08 {

   public static void main(String[] args) {
      // TODO Auto-generated method stub
      int[][] array = {
            {95,86} ,
            {83,92,96} ,
            {78,83,93,87,88}
      };
      
      // Java 2차원 배열 특징 : 1차원 배열을 가지고 만들어서 
      // 정방형 (2x2, 3x3)이 아니어도 무방하다.. 
      
      int sum = 0;
      double avg = 0.0;
      
      // 작성위치... 
      
      // 1) 전체 합 구하기 - 95+86+83+92+86 ~ 88  
      //    전체 평균 구하기 - 전체합 / 10 (전체 회전수)
      // 2중 for문에서 전체 회전수 바깥변수 값 * 안쪽변수 값 (2x2, 3x3 사용가능하지만, 각 array개수가 틀리면 사용불가)
      int cnt = 0;
      for(int i=0;i<array.length;i++) { // 165페이지.25~28라인
    	 
         for(int j=0;j<array[i].length;j++) { 
            cnt++; // 전체 2차원 배열의 반복 횟수 
            sum = sum + array[i][j];
         }
        sum = 0;
         if(i==1) {  System.out.println("2번째 행의 합 = " + sum); } 
      }
      System.out.println("sum = " + sum);
      avg = (double) sum / cnt;
      System.out.println("avg = " + avg);
      // 2) 1행 합 구하기 
      //    1행 평균 구하기 .
      //    2행 합 구하기 
      //    2행 평균 구하기 
      //    3행 합 구하기 
      //    3행 평균 구하기 
      for(int i=0;i<array.length;i++) { // 165페이지.25~28라인
         sum = 0; // 초기화
         avg = 0.0;
         for(int j=0;j<array[i].length;j++) { 
            sum = sum + array[i][j];
         }
         avg = (double) sum / array[i].length;
         System.out.println(i +" 행의 합계 = " + sum);
         System.out.println(i +" 행의 평균 = " + avg);
      }
      
      // 3) 전체행의 합/평균 구하기.
      //    각 행별 합/평균구하기..
      int totalSum = 0; // 전체행의 합 구하기.. 
      double totalAvg = 0.0; // 전체행의 평균구하기.. 
      cnt = 0;
      for(int i=0;i<array.length;i++) { // 165페이지.25~28라인
         sum = 0; // 초기화
         avg = 0.0;
         for(int j=0;j<array[i].length;j++) { 
            cnt++;
            totalSum = totalSum + array[i][j]; // 전체 행의 합
            sum = sum + array[i][j]; // 각 행의 합
         }
         avg = (double) sum / array[i].length;
         System.out.println(i +" 행의 합계 = " + sum);
         System.out.println(i +" 행의 평균 = " + avg);
      }
      System.out.println("전체 행의 합계 = " + totalSum);
      totalAvg = (double) totalSum / cnt;
      System.out.println("전체 행의 평균 = " + totalAvg);
   }
}
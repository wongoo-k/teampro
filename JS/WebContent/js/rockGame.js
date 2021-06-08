/**
 * 
 */
// 글로벌 변수 선언
// function 
var show = null;
var rockGoTimer = 0;
var gameHistory = new Array();
var isRun = false; // 현재 game 진행중인지 체크하는 flag변수

function changeImg() { 
   show = document.getElementsByTagName("img"); // return type : array 
   
   for(var i=0;i < show.length;i++) { 
      //src="images/start.png" 
      // random으로 숫자를 뽑고.. 
      // i번째에 있는 img를 자동으로 변경한다.
      var num = Math.floor(Math.random() *3); // 0,1,2
      show[i].src = "img/"+num+".png";
      show[i].alt = num;
   }
}

function rockGo() { 
   // 나중에 실행하니까.. 
   
   // img 에 있는 src는 자동으로 바꿔준다. 0,1,2를 random으로
   // 주기적으로 호출하니까 setInterval 
   if (isRun == false) { 
      rockGoTimer = setInterval(changeImg,200);
      isRun = true;
   } else {
      alert('게임이 진행중입니다. 결과확인 버튼을 눌러주세요!!');      
   }
}

function rockStop() { 
   // 현재 게임이 진행중인지 여부 체크 isRun=true;
   if(isRun == false) { 
      alert('게임을 시작해주세요');
      return ;      
   }
   
   // 타이머를 중지 시키고 
   clearInterval(rockGoTimer);
   isRun = false;
   
   // 게임결과를 생성해야함.
   
   // player1하고 player2 하고 어떤값이 있는지 확인
   var p1 = show[0].alt;
   var p2 = show[1].alt; // 글로벌변수
   
/*   alert('여기까지는 실행됨 1');
   if(p1 == p2) { 
      alert('비겼음'); 
   } else if(p1 == 0 && p2 == 1) { 
      alert('p1이 이겼음');
   } else if(p1 == 0 && p2 == 2) { 
      alert('p2가 이겼음');
   } else if(p1 == 1 && p2 == 0 ){ 
      alert('p2가 이겼음');
   } else if(p1 == 1 && p2 == 2) { 
      alert('p1이 이겼음');
   } else if(p1 == 2 && p2 == 0) { 
      alert('p1이 이겼음');
   } else if(p1 == 2 && p2 == 1 ) { 
      alert('p2가 이겼음');
   } else {
      alert('무슨 에러???');
   }
   alert('여기까지는 실행됨 2');*/
   var resultStr = "";
   if ((p1 + 1) % 3 == p2)  { 
      //alert('player1 이김');
      resultStr = "player1 이김";
   } else if (p1 == p2) { 
      //alert('비김');
      resultStr = "비김";
   } else { 
      //alert('player2 이김');
      resultStr = "player2 이김";

   }
   
   gameHistory.push(resultStr);
   var result = document.getElementById("result");
   
   result.innerHTML += "<p>" + resultStr + "</p>";   

}

function resultAll() { 
   var resultAll = document.getElementById("resultAll");

   for(var i=0;i < gameHistory.length;i++) { 
      resultAll.innerHTML += "<p>" + gameHistory[i] + "</p>";
   }
}

window.onload = function() { 
   
   
}

//addEventListener('load',firstRun)
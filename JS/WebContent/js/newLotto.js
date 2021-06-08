/**
 * 
 */

// window.onload 하는 이유 
// addEventListener('load', function명) 하는 이유 
// --> script가 body보다 상단 <head>에 있기때문에 
//     javascript 특성상 인터프리팅.. 위에서 아래로.. 한줄씩 실행

function makeComNumber() {
	var comBalls = new Array(); // 컴퓨터 뽑은 번호 저장..
	var count = 0;

	while (count < 7) { // 7개.. 6개는 본번호, 1개는 보너스
		var ball = Math.floor(Math.random() * 45 + 1); // 1부터 45개

		if (comBalls.indexOf(ball) == -1) { // 못찾았으면
			comBalls.push(ball); // 어 중복체크는 ? 
			count++; // 1개 뽑은 카운트 증가
		}
	}
	// 7개를 다뽑은 상태 comBalls..
	return comBalls;
}

function lottoPrint() {
	// lotto 
	// 규칙 : 1~45번까지 숫자중.. 6개를 뽑고... 1개는 보너스 번호 
	//        사용자가 구매한 번호와.. 맞춰보기.. 
	var comBalls_7 = makeComNumber();
	var comBall_bonus = comBalls_7.pop();// Array에서 1개 꺼내고 기존 array에서는 삭제
	//alert("comBalls_7 = " + comBalls_7);
	//alert("comBall_bonus = " + comBall_bonus);
	//alert("comBalls_7 = " + comBalls_7 + ":" + "comBall_bonus = " + comBall_bonus);

	var spans = document.getElementsByTagName("span");
	spans[1].innerHTML = comBalls_7.sort(function(a, b) { return a - b }).join("-"); // 숫자를 sort하고 - 를 붙여서 출력 
	// 5 ,3, 1, 10, 15 , 25
	// 1-3-5-10-15-25 (출력)
	spans[3].innerHTML = comBall_bonus;

	// spans[5]에 이미지를 출력 
	// 아래구문을 for문을 돌려서 작성
	spans[5].innerHTML = ""; // 초기화
	for (var i = 0; i < comBalls_7.length; i++) {
		spans[5].innerHTML += "<img src='images/ball_" + comBalls_7[i] + ".png' alt='번호'>";
		//  spans[5].innerHTML = "<img src='images/ball_3.png' alt='3'>";
	}
	spans[7].innerHTML = "<img src='images/ball_" + comBall_bonus + ".png' alt='번호'>";

	var comBallResult = document.getElementById("comBallResult");

	comBallResult.innerHTML += spans[5].innerHTML + "<br>";
}
var userBalls_6 = new Array(); // [0,0,0,0,0,0]
var userBalls_6_Dup = [1, 1, 1, 1, 1, 1]; // 값이 없거나 중복이면 1, 0이면 중복아님.
// 처음에는 무조건 값이 없거나,중복으로 체크해두고.. 아닌걸 뺀다 ?

var dupCheck = 0; // 이게 0이면 중복이 없음.. 중복이 있으면 +1
function checkDup(num, pos) {
	// 여기에서 사용자가 입력한 값을 num에 담아줌.
	// 6개의 값을 중복체크 - 동일타입.. ??? 
	userBalls_6[pos] = num;
	var userInputPos = document.getElementsByName("userInput");
	userInputPos[pos].style.backgroundColor = "white";

	userBalls_6_Dup[pos] = 0; // 중복아님으로 바꾸고

	// 값이 변경되어서 이 function을 호출했는데
	// 중복체크는 어떻게 ???? 
	//alert(userBalls_6);

	for (var i = 0; i < userBalls_6.length; i++) { // i =0; i=1; i=3;
		//alert('1');

		if (pos != i && num == userBalls_6[i]) {  //pos=2,num=3,i=3
			//alert('2');

			// 내가 입력한 값을 이미 array에 넣었으니 
			// 그건 무조건 비교가 됨.
			// 여기에 한번이라도 들어온거면 중복이 있음.
			// 내 지금 입력한 칸에 focus를 맞추고. 다시 입력하라고
			alert("pos = " + pos + " 번째 값이 중복입니다.");

			// 중복이 되면 입력한 곳에 포커스가 이동하도록
			// + 빨간색으로 밑줄
			// input type=number name=
			//var userInputPos = document.getElementsByName("userInput");
			userInputPos[pos].focus();
			userInputPos[pos].style.backgroundColor = "red";
			// 나중에 중복안되었을시.. 다시 해제해야함. 구현완료
			userBalls_6_Dup[pos] = 1; // 중복으로 바꾸고

			return false;
		}
	}

	// 아무것도 중복이 안되었는데 
	// 값이 6개 전부 입력이 되어 있으면 입력 완료 
	// 어떻게 체크?
	// 중복인거를 수정안하고 넘어가면 어떻게 ? 
	// 중복체크 array에 1이 들어 있는거 확인

	// 다 입력되기 전에 alert뜨는게 불편함..
	if (userBalls_6_Dup.indexOf(1) != -1) {
		// 1이 1개 라도 들어 있으면 return 
		alert("중복이 제거 되지 않았습니다. 값을 입력하거나 빨간색을 확인해주세요!");
		return false;
	}
	// 중복이 없고, 전부 입력되었으면 alert("성공?");

	alert("중복 되지 않은 로또번호 = " + userBalls_6);
}

var userBallsDone_6 = [0, 0, 0, 0, 0, 0]; //6개 

function checkDupDone() {
	var userInputDone = document.getElementsByName("userInputDone");

	// 먼저 다 꺼내서 어레이에 저장하고 비교는 나중에 해야하는거 아냐 ? 
	// 위에 빨간표시 되는건 손도 안댓고
	// 밑에 6개모두 확인만 했어요 
	// 그건 알겠는데. 
	for (var i = 0; i < userBallsDone_6.length; i++) {
		userBallsDone_6[i] = userInputDone[i].value;
		var value = userBallsDone_6[i];
		if (userBallsDone_6.indexOf(value) != -1) {
			alert('번호가 중복되었습니다.');
			return false;
		}
	}
	//			alert(userBallsDone_6);
	//	for (var j = i + 1; j = userBallsDone_6.length; j++) {
	//userBallsDone_6[j] = userInputDone[j].value;

	//	}

	alert("userBallsDone = " + userBallsDone_6);
}
window.onload = function() {
	// 게임 횟수 10회 
	for (var i = 0; i < 10; i++) {
		lottoPrint();
	}

}
//lottoPrint();
/**
 * 
 */


function makeComNumber() {
	var comBalls = new Array(); // 컴퓨터가 뽑은 번호 저장
	var count = 0;


	while (count < 7) { // 7개.. 6개는 본 번호, 1개는 보너스 번호.
		var ball = Math.floor(Math.random() * 45 + 1);

		if (comBalls.indexOf(ball) == -1) {
			comBalls.push(ball); // 중복체크는?
			count++;
		}
	}
	return comBalls;
}

function makeUserNumber() {
	var userBalls = new Array();
	var count = 0;

	while (count < 6) {
		var ball = Math.floor(Math.random() * 45 + 1);

		if (userBalls.indexOf(ball) == -1) {
			userBalls.push(ball); // 중복체크는?
			count++;
		}
	}
	return userBalls;
}

var comBalls_7 = null;

function comLottoPrint() {
	// 규칙 : 1~45번까지 숫자중 6개를 뽑고 1개는 보너스 번호
	// 사용자가 구매한 번호와 맞춰보기

	if (comBalls_7 != null) {
		alert('이미 추첨이 완료되었습니다.');
		return false;
	}
	comBalls_7 = makeComNumber();

	var comBall_bonus = comBalls_7.pop(); //Array에서 1개 꺼내고 기존 Array에서는 삭제	
	comBalls_7.sort(function(a, b) { // 오름차순 정렬
		return a - b;
	});
	//	console.log(spans);
	//alert("comBalls_7 = " + comBalls_7 + ":" + "comBall_bonus = " + comBall_bonus);	

	//spans[1].innerHTML = comBalls_7.join("-");;
	//spans[3].innerHTML = comBall_bonus;
	//spans[0].innerHTML = ""; //초기화
	for (var i = 0; i < comBalls_7.length; i++) {
		spans[0].innerHTML += "<img src ='img/ball_" + comBalls_7[i] + ".png' alt='번호'>";
		spans[1].innerHTML = "<img src='img/ball_" + comBall_bonus + ".png' alt='번호'>";
	}
	//	var comBallResult = document.getElementById("comBallResult");
	var comSiXBall = document.getElementById("comSiXBall");
	var comBonusBall = document.getElementById("comBonusBall");

	comSiXBall.innerHTML = "이번주 로또 추첨번호는 : " + spans[0].innerHTML;
	comBonusBall.innerHTML = "보너스볼 :" + spans[1].innerHTML;
}

function userLottoPrint() {
	var userBalls_6 = makeUserNumber();
	userBalls_6.sort(function(a, b) {
		return a - b;
	});

	//	alert("spans = " + spans.length);
	//	console.log(spans);
	//	spans[2].innerHTML = "";
	for (var i = 0; i < userBalls_6.length; i++) {
		spans[2].innerHTML += "<img src ='img/ball_" + userBalls_6[i] + ".png' alt='번호'>";
	}
	userSiXBall.innerHTML = spans[2].innerHTML + "<br>";
}




function ManLotto() {
	//	alert("num = " + num);
	//	alert("pos = " + pos);
	//	console.log("userLotto = " + userLotto);
	//	userLotto[pos] = pos;
	var userLotto = document.getElementsByClassName("input");
	var cnt = 1;
	for (var i = 0; i < userLotto.length; i++) {
		if (!userLotto[i].value) {
			//			alert("숫자를 입력해 주세요.");
			return;
		}
		for (var j = i + 1; j < userLotto.length; j++) {
			if (Number(userLotto[i].value) == Number(userLotto[j].value)) {
				cnt++;
				alert("cnt= " + cnt);
				if (cnt > 1) {
					// 2개 매치 	
					alert('중복된 번호입니다.');
					userLotto[i].focus();
					return;
				}
			}
		}


	}

	var value_list = document.getElementsByClassName("input").value;
	alert(value_list);

	// 여기서 사용자 값을 어레이하고 비교해야함..
	value_list = value_list.innerHTML = "<img src='img/ball_" + value_list + ".png' alt='번호'>";
	document.getElementById("result1").innerHTML = value_list;

}

function autoLotto() {
	setCount = document.getElementById("setCount").value;
	//	alert(setCount);	
	if (setCount > 0) {
		for (i = 0; i < setCount; i++) {
			userLottoPrint();
		}
	} else {
		alert('자동게임 횟수를 입력 해 주세요');
	}
}

/*window.onload = function() {

}*/



/**
 * 
 */
function runAlarm() {
	document.body.style.backgroundColor = "blue";
	document.getElementById("clock").setAttribute("class", "move");
}

var setAlarmNo = 0;
function setAlarm() {
	var userInput = document.getElementById("setAlarmInput").value;
	if (userInput >= 1 && userInput <= 3600) {
		alert(userInput + "초 후에 알람이 울립니다!!")
		setAlarmNo = setTimeout(runAlarm, userInput * 1000);
	} else {
		alert("알람시간을 설정해 주세요!!");
		return false;
	}
}

var stopChoice;
function stopAlarm() {
	var snoozeInput = document.getElementById("snoozeValue").value;
	alert(snoozeInput);
	stopChoice = confirm("알람을 취소하시겠습니까?");
	if (stopChoice = true) {
		clearTimeout(setAlarmNo);
		document.body.style.backgroundColor = "white";
		document.getElementById("clock").removeAttribute("class");
		alert("취소되었습니다");
		document.getElementById("setAlarmInput").value = null;

		if ((document.getElementById("snooze").checked == true) && (snoozeInput = "1")) {
			alert("2초뒤 다시 알람이 울립니다!!")
			setAlarmNo = setTimeout(runAlarm, 2 * 1000);
			clearTimeout(setAlarmNo);
			document.body.style.backgroundColor = "white";
			document.getElementById("clock").removeAttribute("class");
		}
		if ((document.getElementById("snooze").checked == true) && (snoozeInput = "2")) {
			alert("5초뒤 다시 알람이 울립니다!!")
			setAlarmNo = setTimeout(runAlarm, 5 * 1000);
			clearTimeout(setAlarmNo);
			document.body.style.backgroundColor = "white";
			document.getElementById("clock").removeAttribute("class");
		}
		if ((document.getElementById("snooze").checked == true) && (snoozeInput = "3")) {
			alert("10초뒤 다시 알람이 울립니다!!")
			setAlarmNo = setTimeout(runAlarm, 10 * 1000);
			clearTimeout(setAlarmNo);
			document.body.style.backgroundColor = "white";
			document.getElementById("clock").removeAttribute("class");
		}
	} else {
		document.getElementById("setAlarmInput").value = null;
		return false;
	}
}

var alarmViewChk = false;
function alarmView() {
	if (alarmViewChk == false) {
		document.getElementById("setAlarm").style.display = "block";
		alarmViewChk = true;
	} else {
		document.getElementById("setAlarm").style.display = "none";
		alarmViewChk = false;
	}
}

function timeView() {
	var now = new Date();
	document.getElementById("dc").innerHTML = now.toLocaleTimeString();
}

window.onload = function() {
	setInterval(timeView, 1000);
}
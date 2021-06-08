/**
 * 
 */
window.onload = function() {
	var login = document.login;
	login.onsubmit = function() {
		if (!login.id.value) {
			alert('아이디를 입력해주세요!');
			login.id.focus();
			return false;
		}
		var idCnt = /^\d{3,8}$/;
		if (!idCnt.test(login.id.value)) {
			alert('3자에서 8자로 입력해 주세요')
			login.id.focus();
			return false;
		}
		if (!login.pw.value) {
			alert('비밀번호를 입력해주세요!');
			login.pw.focus();
			return false;
		}
		var pwCnt = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/;
		if (!pwCnt.test(login.pw.value)) {
			alert('최소 8 자, 대문자 하나 이상, 소문자 하나, 숫자 하나 및 특수 문자 하나 이상 입력하세요')
			login.pw.focus();
			return false;
		}
	}
}
function validateForm() {
	var dan = document.getElementById("dan");
	
	if(dan.value >= 2 && dan.value <= 9) {
		return true;
	}
	
	dan.value='';
	dan.focus();
	alert('2~9까지의 숫자만 입력하세요');
	return false;
}
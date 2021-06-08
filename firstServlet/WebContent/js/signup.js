function validateForm() {
	var id = document.forms["myForm"]["id"].value;
	var pw = document.forms["myForm"]["pw"].value;
	var name = document.forms["myForm"]["name"].value;
	var date = document.forms["myForm"]["date"].value;
    var idPatt = /[~!@#$%^&*()_+|]/g;
	var idResult = idPatt.test(id);
    var pwPatt = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/g;
	var pwResult = pwPatt.test(pw);

	if (id == "" || id.length < 8 || idResult) {
		alert("id는 공백안됨, 8자이상, 특수문자 사용불가.");
		document.getElementById("id").focus();
		return false;
	} else if (pw == "" || pwResult == false) {
		alert("pw는 공백안됨, 8자이상, 특수문자와 대문자를 포함.");
		document.getElementById("pw").focus();
		return false;
	} else if (name == "" || name.length < 2 || name.length > 5) {
		alert("name은 최소 2글자에서 5글자까지.");
		document.getElementById("name").focus();
		return false;
	} else if (date == "") {
		alert("date를 입력하세요.");
		document.getElementById("date").focus();
		return false;
	}
	return true;
}
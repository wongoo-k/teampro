/**
 * 
 */

// 2번 방식 <head>에 외부 script형태로 사용
// window onload 이벤트가 끝나면
window.onload = function() {
	var bt = document.getElementById("bt");
	/*bt.onclick = function() {
		alert("bt 눌렷음");
	}*/
	function view() {
		alert('bt 눌렀음');
	}
	bt.addEventListener('click', view);
	// function 자리이기 때문에 () 붙이지 않는다.	
};
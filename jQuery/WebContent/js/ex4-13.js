/**
 * 
 */
$(document).ready(function() {
	$("div").each(function(index, element) {
		console.log(index); // li 요소의 index 값, 0(첫 번째 요소) 부터 시작
		console.log(element); // li 요소 자신 
		console.log($(this).attr("class")); // li 요소 각각의 class를 취득
	});
});
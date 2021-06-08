/**
 * 
 */
window.onload = function() {
	var bt = document.getElementById('bt');
	var i = 0;
	var increase = setInterval(function() {
		i++;
		alert(i);
	}, 2000);
	bt.onclick = function() {
		clearInterval(increase);
		alert('멈췄습니다.');
	};
};
/**
 * 
 */
window.onload = function() {
	var bt = document.getElementById('bt');
	var area = document.getElementById('area');
	bt.onclick = function(event) {
		console.log(event.target);
		console.log(event.type);
		console.log(event.clientX);
		console.log(event.clientY);
		console.log(event.screenX);
		console.log(event.screenY);
	};
	area.onmousedown = function(event) {
		console.log(event.button);
		var background = '#718c00';
		if (event.button == 1) {
			background = 'yellow';
		} else if (event.button == 2) {
			background = 'black';
		}
		area.style.background = background;
	};
};
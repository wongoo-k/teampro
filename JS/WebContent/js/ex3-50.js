/**
 * 
 */
function createEle() {
	var bt = document.getElementById('bt');
	var bt2 = document.getElementById('bt2');
	function popup() {
		var div = document.createElement('div');
		var p = document.createElement('p');
		var txt = document.createTextNode('자바스크립트');
		p.appendChild(txt);
		div.appendChild(p);
		document.body.appendChild(div);
	}
	function popup2() {
		bt2.removeChild(bt2.firstChild);
		alert('popup2() run');
	}
	bt.onclick = popup;
	bt2.onclick = popup2;
}
addEventListener('load', createEle);
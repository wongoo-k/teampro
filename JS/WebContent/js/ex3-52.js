/**
 * 
 */
function createEle() {
	var content = document.getElementById('content');
	content.innerHTML = '<p class="m1">자바스크립트</p>';
	//content.innerHTML += '<p class="m1">자바스크립트</p>';
	var txt = document.createTextNode("hello");
	var p1 = document.createElement("p");
	p1.appendChild(txt);
	p1.setAttribute('class', 'm1');
	content.appendChild(p1);
}
addEventListener('load', createEle);
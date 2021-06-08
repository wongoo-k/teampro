/**
 * 
 */
function createEle() {
	var bt = document.getElementById('bt');
	function popup() {
		var div = document.createElement('div');
		var a = document.createElement('a');
		var txt = document.createTextNode('아이콕스');
		a.appendChild(txt);
		a.setAttribute('href', 'http://icoxpublish.com');
		a.setAttribute('target', '_blank');
		a.setAttribute('title', '새창');
		div.appendChild(a);
		//document.body.appendChild(div);
		
		var td1 = document.getElementById('td1');
		//td1.appendChild(div);
		
		var tbl1 = document.getElementById('tbl1');
		var td = document.createElement('td');
		var tr = document.createElement('tr');
		
		td.appendChild(div);
		tr.appendChild(td);
		tbl1.appendChild(tr);
	}
	bt.onclick = popup;
}
addEventListener('load', createEle);
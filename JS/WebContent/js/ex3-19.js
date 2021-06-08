/**
 * 
 */
var h1 = '<h1>';
var dan = 1;
h1 += '구구단 가로';
h1 += '</h1>';
document.write(h1);
var table = '<table>';
for (var i = 2; i <= 9; i++) {
	table += '<tr>';
	for (var j = 1; j <= 9; j++) {
		table += '<td>' + i + '*' + j + '=' + i * j + '</td>';

	}
	dan++;
	table += '<td>' + dan + '단' + '</td>' + '</tr>';
}
table += '</table>';
document.write(table);

var h1 = '<h1>';
h1 += '구구단 세로';
h1 += '</h1>';
document.write(h1);

var table1 = '<table>';
for (var i = 1; i <= 9; i++) {
	table1 += '<tr>';
	table1 += '<td>' + 2 + '*' + i + '=' + 2 * i + '</td>';
	table1 += '<td>' + 3 + '*' + i + '=' + 3 * i + '</td>';
	table1 += '<td>' + 4 + '*' + i + '=' + 4 * i + '</td>';
	table1 += '<td>' + 5 + '*' + i + '=' + 5 * i + '</td>';
	table1 += '</tr>';
}
table1 += '</table>';

var table2 = '<table>';
for (var j = 1; j <= 9; j++) {
	table2 += '<tr>';
	table2 += '<td>' + 6 + '*' + j + '=' + 6 * j + '</td>';
	table2 += '<td>' + 7 + '*' + j + '=' + 7 * j + '</td>';
	table2 += '<td>' + 8 + '*' + j + '=' + 8 * j + '</td>';
	table2 += '<td>' + 9 + '*' + j + '=' + 9 * j + '</td>';
	table2 += '</tr>';
}
table2 += '</table>';

document.writeln(table1);
document.writeln();
document.writeln(table2);
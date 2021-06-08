/**
 * 
 */
//var dateObj = new Date(2022, 9, 30, 10, 30);
var dateObj = new Date();

var dateInfo = {
	year: dateObj.getFullYear(),
	month: dateObj.getMonth() + 1,
	date: dateObj.getDate(),
	hours: dateObj.getHours(),
	minutes: dateObj.getMinutes(),
	nowDate: dateObj.toUTCString()
}
for (var i in dateInfo) {
	console.log(i + ':' + dateInfo[i]);
}



document.write("toLocaleString = " + dateObj.toLocaleString() + "<br>");
document.write("toLocaleDateString = " + dateObj.toLocaleDateString() + "<br>");
document.write("toLocaleTimeString = " + dateObj.toLocaleTimeString() + "<br>");
document.write("---------------------------------------------------------" + "<br>");
document.write("toTimeString = " + dateObj.toTimeString() + "<br>");
document.write("toUTCString = " + dateObj.toUTCString() + "<br>");

var curDate = new Date();

var dateInfo = {
	date: curDate.getDate() + 35,
}
curDate.setDate(dateInfo.date);
document.write("오늘부터 35일 이후는 = " + curDate.toLocaleDateString() + "<br>");


var today = new Date(2017, 6, 9);
var afterDay = new Date(2020, 12, 28);
var diffDay = afterDay.getTime() - today.getTime();
var willDay = Math.ceil(diffDay / 1000 / 60 / 60 / 24);
document.write(willDay + "일");
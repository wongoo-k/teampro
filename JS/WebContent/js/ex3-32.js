/**
 * 
 */
// 인코딩, 디코딩함수
var encodeStr = '자바스크립트';
console.log(encodeURIComponent(encodeStr));
var decodeStr = encodeURIComponent(encodeStr);
console.log(decodeURIComponent(decodeStr));
// 숫자, 유한무한 값 판별 함수
var num1 = '숫자';
if (!isNaN(num1)) {
	console.log('숫자');
} else {
	console.log('숫자아님');
}
var num2 = 1 / 0;
if (isFinite(num2)) {
	console.log('유한값');
} else {
	console.log('무한값');
}
// 숫자, 문자 변환 함수
var num3 = '10';
console.log(Number(num3));

var num4 = '100px';
console.log(parseInt(num4));
var num5 = '33.3%';
console.log(parseFloat(num5));
var num6 = 10;
console.log(typeof num6);
console.log(typeof String(num6));
// 자바스크립트 코드 변경 함수
var str1 = 'var num7 = 10';
var str2 = 'var num8 = 20';
eval(str1);
eval(str2);
console.log(num7 + num8);
/**
 * 
 */
var luckyNumber = [];
var num = 0;
for (var i = 1; i <= 100; i++) {
	luckyNumber.push(i); // 1(index 0) ~ 100(index 99)
}
num = Math.floor(Math.random() * luckyNumber.length); // 0 ~ 99
console.log(luckyNumber.toString());
console.log('오늘 행운의 당첨번호은 ' + luckyNumber[num] + '입니다.');
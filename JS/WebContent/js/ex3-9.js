/**
 * 
 */
var num1 = 20;
var num2 = 10;
var score1 = num1 + num2;
var score2 = num1 - num2;
var score3 = num1 * num2;
var score4 = num1 / num2;
console.log(score1 + ',' + score2 + ',' + score3 + ',' + score4);

var evenOdd = 4;
var result = evenOdd % 2;
var comment;
if (result === 0) {
	comment = evenOdd + '는(은) "짝수" 입니다.';
} else {
	comment = evenOdd + '는(은) "홀수" 입니다.';
}
console.log(comment);

var increase = 0;
var add = 0;
++increase;
console.log(increase);
increase++;
console.log(increase);
add = ++increase;
console.log(add + ',' + increase);
add = increase++;
console.log(add + ',' + increase);
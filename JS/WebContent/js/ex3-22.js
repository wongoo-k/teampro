/**
 * 
 */
var sum = 0;
var num = '3의 배수';
for (var i = 1; i < 10; i++){
	if (i % 3 == 0) {
		num += i + ' ';
		continue;
	}
	sum += i;
}
console.log(num + '제외 총합 : ' + sum);
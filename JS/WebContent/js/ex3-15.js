/**
 * 
 */
var age = Number(prompt('나이입력', '')); 
var admissionFee = '';

// 1.정상적으로 숫자를 입력
// 2. 공백을 입력 (일반 엔터) = 0
// 3. 문자를 입력 (try/catch 가 된 상태처럼.. else로 분기)
if (age < 13 || age >= 65) {
	admissionFee = '2,000원';
} else if (age >= 13 && age < 20) {
	admissionFee = '4,000원';
} else {
	admissionFee = '6,000원';
}
document.write(admissionFee); 
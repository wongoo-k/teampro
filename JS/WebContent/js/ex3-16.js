/**
 * 
 */
var html = Number(prompt('html 점수입력', ''));
var css = Number(prompt('css 점수입력', ''));
var javascript = Number(prompt('javascript 점수입력', ''));
var avg = (html + css + javascript) / 3;
var comment;
if (avg >= 60) {
	if (html < 40) {
		comment = 'HTML' + '40점 미만 불합격';
	} else if (css < 40) {
		comment = 'CSS' + '40점 미만 불합격';
	} else if (javascript < 40) {
		comment = 'JAVASCRIPT' + '40점 미만 불합격';
	} else {
		comment = '평균' + avg + '점 합격';
	}
} else {
	comment = '평균' + avg + '점 불합격';
}
document.write(comment);

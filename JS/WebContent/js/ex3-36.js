/**
 * 
 */
class SubjectInfo {
	constructor(subject, credit) {
		this.subject = subject;
		this.credit = credit;
		this.days = [80, 120, 140];
		this.day = this.days[0];
	}
	printOut() {
		return '과목 : ' + this.subject + ', 학점 : ' + this.credit + ', 수업일 : ' + this.day;
	}
	get lessonTime() {
		return this.day;
	}
	set lessonTime(num) {
		this.day = this.days[num];
	}
}
var sub1 = new SubjectInfo('html', 1);
console.log("subject = " + sub1.subject);
console.log("printOut() = " + sub1.printOut());
console.log("lessonTime = " + sub1.lessonTime); // get lessonTime() → this.days[0] → 80
sub1.lessonTime = 1;         // set lessonTime(num) → this.days[1] → 120  
console.log("lessonTime = " + sub1.lessonTime);
var sub2 = new SubjectInfo('css', 2);
console.log("subject = " + sub2.subject);
sub2.lessonTime = 2;
console.log("printOut() = " + sub2.printOut()); 
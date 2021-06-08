/**
 * 
 */
var hpReg = /^\d{10,11}$/;
var hpReg1 = /^\d{3}-\d{3,4}-\d{4}$/;
var emailReg = /^[A-Za-z0-9!#$%^&*_-]+@[A-Za-z0-9_-]+(\.[A-Za-z0-9_-]+){1,2}$/;
var hp1 = '010123456';
var hp2 = '01012345678';
var hp3 = '010-123-1234';
var email1 = 'abc&1_23&A-BC@icox';
var email2 = 'abc&1_23&A-BC@icox.com';
var email3 = 'abc&1_23&A-BC@icox.co.kr';
var email4 = 'abc&1_23&A-BC@icox.abc.co.kr';
console.log(hpReg.test(hp1));
console.log(hpReg.test(hp2));
console.log(emailReg.test(email1));
console.log(emailReg.test(email2));
console.log(emailReg.test(email3));
console.log(emailReg.test(email4));
alert("hpReg1 = " + hpReg1.test(hp1)); //false
alert("hpReg1 = " + hpReg1.test(hp3)); //true

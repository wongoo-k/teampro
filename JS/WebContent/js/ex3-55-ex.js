/**
 * 
 */
window.onload = function() {

   const signUpButton = document.getElementById('signUp');
   const signInButton = document.getElementById('signIn');
   const container = document.getElementById('container');

   signUpButton.addEventListener('click', () => {
      container.classList.add('right-panel-active');
   });

   signInButton.addEventListener('click', () => {
      container.classList.remove('right-panel-active');
   });
   var login = document.login;
   login.onsubmit = function() {
      if (!login.id.value) {
         alert('111아이디를 입력해주세요!');
         login.id.focus();
         return false;
      }
      // if login id가 3자리이상 8자리 이하이면 
      var idCnt = /^.{3,8}$/;
      if (!idCnt.test(login.id.value)) {
         alert('아이디를 3자에서 8자로 입력해 주세요');
         login.id.focus();
         return false;
      }

      if (!login.pw.value) {
         alert('222비밀번호를 입력해주세요!');
         login.pw.focus();
         return false;
      }
      // if passwd가 특수문자1자포함/대문자1자포함/8자이상
      var pwCheck = /^(?=.*[A-Z]{1})(?=.*[~`!@#$%\^&*()-=+]{1}).{8,}$/;
      if (!pwCheck.test(login.pw.value)) {
         alert('특수문자 1개이상, 대문자1개이상 , 8자 이상');
         login.pw.focus();
         return false;
      }
   }
}
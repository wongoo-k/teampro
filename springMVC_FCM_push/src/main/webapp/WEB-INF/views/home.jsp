<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
 
<h1> 파이어 메세지</h1>
<p id="token"></p>
<script src="https://www.gstatic.com/firebasejs/8.4.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.4.0/firebase-messaging.js"></script>
<script>
var firebaseConfig = {
	    apiKey: "AIzaSyBtW3Ud0MM0_nE2fJWSRMyjAO2KMA30bm4",
	    authDomain: "yogihoxy-2795f.firebaseapp.com",
	    projectId: "yogihoxy-2795f",
	    storageBucket: "yogihoxy-2795f.appspot.com",
	    messagingSenderId: "65200776244",
	    appId: "1:65200776244:web:a7c93990d4769530755661",
	    measurementId: "G-VBVRVP9H45"
	  };
	firebase.initializeApp(firebaseConfig);
	const messaging=firebase.messaging();
	
	function IntitalizeFireBaseMessaging() {
		
		messaging
				.requestPermission()
				.then(function () {
					console.log("Notification Permission")
					return messaging.getToken();
				})
				.then(function (token) {
					console.log("Token : "+token);
					document.getElementById("token").innerHTML=token;
				})
				.catch(function (reason) {
					console.log(reason);
				});
	}
	
	messaging.onMessage(function (payload) {
		console.log(payload);
	});
	messaging.onTokenRefresh(function () {
		messaging.getToken()
			.then(function (newtoken) {
				console.log("New Token : "+ newtoken);
			})
			.catch(function (reason) {
				console.log(reason);
			})
	})
	IntitalizeFireBaseMessaging();
</script>
</body>
</html>
importScripts('https://www.gstatic.com/firebasejs/8.4.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.4.0/firebase-messaging.js');
 
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
const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload){
	console.log(payload)

});

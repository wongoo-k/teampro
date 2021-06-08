/**
 * 
 */

window.onload = function() { 
   var list1 = document.querySelector("#box1 > ul > li");
   var list2 = document.querySelectorAll("#box2 > ul >li ");
   console.log("list1 = " + list1);
   console.log("list2 = " + list2+ ":length = " + list2.length);
   
   for(var i of list2) { 
      console.log("list2 = " + i);
   }
   
   list2.forEach(function(value,index,array){
      console.log("list2 value = " + value);
      console.log("list2 index = " + index);
      console.log("list2 array = " + array);
   });
   
   var list11 = document.getElementById("box1");
   var list21 = document.getElementById("box2");
   console.log("list11 = " + list11);
   console.log("list21 = " + list21);
   
   var list111 = document.getElementsByTagName("li");
   console.log("list111 = " + list111 + ":length = " + list111.length);
   for(var i of list111) { 
      console.log("list111 = " + i);
   }   

};
var lottoUserNum = new Array();
var resultPcArray = new Array();
var resultUserArray =  new Array();
var resultComArray = new Array();
var count = 0;
var bonusNum = [];
var switchButton = 1;

function subjectNum() {
   var subject = document.getElementById("subject");
   subject.innerHTML = "제 "+(count+1)+"회 로또게임 (6/45)";
}

function pickLottoPC() { 
    if(count == 20) {
        alert("주어진 20회의 게임이 모두 끝났습니다.");
        return;
    } else if(count < 20 && switchButton == 1) {
        lottoPcNum = new Array(7);
        for(var i = 0; i < lottoPcNum.length; i++) {
            if (i==0) {
                lottoPcNum[i] = Math.floor(Math.random()*45)+1;
            } else {
                var tmp = Math.floor(Math.random()*45)+1;
                for(var j = 0; j <= i; j++) {
                    if(lottoPcNum[j] == tmp) {
                        i--;
                        break;
                    } else if (i == j) {
                        lottoPcNum[i] = tmp;
                    }
                }
            }
        }
        
        console.log("보너스 고르기 전: " + lottoPcNum);
        bonusNum[count] = lottoPcNum.pop();
        console.log("보너스 : " + bonusNum);
        lottoPcNum.sort(compare);
        console.log("정렬후: " + lottoPcNum);
        var pcButton = document.getElementsByClassName("pcButton");
        for(var i = 0; i < lottoPcNum.length; i++) {
            pcButton[i].innerHTML = "<img src='images/ball_"+lottoPcNum[i]+".png' alt='로또번호' />";
        }
        bonus.innerHTML = "<img src='images/plus.png' alt='플러스' padding='0px' width='30px'/>" + " " + "<img src='images/ball_"+bonusNum[count]+".png' alt='로또번호' />";
        resultPcArray[count] = lottoPcNum;
        console.log(resultPcArray);
        switchButton = 2;
    } else {
        alert("이미 컴퓨터 번호를 뽑으셨습니다.");
    }
}

function compare ( a , b ) {   return a - b;   } 

function pickLottoUser() {
    if (switchButton == 2) {
        if(count == 20) alert("주어진 20회의 게임이 모두 끝났습니다.");
        var lottoUserNum1 = new Array(6);
        for(var i = 0; i < lottoUserNum1.length; i++) {
            if (i==0) {
                lottoUserNum1[i] = Math.floor(Math.random()*45)+1;
            } else {
                var tmp = Math.floor(Math.random()*45)+1;
                for(var j = 0; j <= i; j++) {
                    if(lottoUserNum1[j] == tmp) {
                        i--;
                        break;
                    } else if (i == j) {
                        lottoUserNum1[i] = tmp;
                    }
                }
            }
        }
        console.log("lottoUserNum1: " +lottoUserNum1.sort(compare));
        var userButton = document.getElementsByClassName("userButton");
           for(var i = 0; i < lottoUserNum1.length; i++) {
            userButton[i].innerHTML = "<img src='images/ball_"+lottoUserNum1[i]+".png' alt='로또번호' />";
        }
        lottoUserNum = lottoUserNum1;
        
        resultUserArray[count] = lottoUserNum1;
        console.log(resultUserArray);
        switchButton = 3;
    } else {
        alert("컴퓨터 뽑기 버튼을 먼저 누르십시오");
    }
}
function compareNum() {
    if(switchButton == 3) {
        var resultScore = document.getElementById("resultScore");
        var lottoCount= 0;
        console.log("lottoPcNum" + lottoPcNum);
        console.log("lottoUserNum" + lottoUserNum);
        for(var i=0; i<lottoPcNum.length; i++){
            for(var j=0; j< lottoUserNum.length; j++) {
                if(lottoPcNum[i] == lottoUserNum[j]) lottoCount++; //비교해서 같으면 +1
                console.log("로또카운트: "+lottoCount);
            }
        }
        console.log("로또카운트1: "+lottoCount);
        switch(lottoCount) {
            case 6:
            console.log("결과: 1등");
            resultScore.innerHTML = "1등";
            resultComArray[count] = "1등";
            break;
            case 5:
            var isExist = (lottoUserNum.indexOf(bonusNum));
            if (isExist) {
                console.log("결과: 2등");
                resultScore.innerHTML = "2등";
                resultComArray[count] = "2등";
                } else {
                    console.log("결과: 3등");
                resultScore.innerHTML = "3등";
                resultComArray[count] = "3등";
            }
                break;
                case 4:
                console.log("결과: 4등");
                resultScore.innerHTML = "4등";
                resultComArray[count] = "4등";
                break;
                case 3:
                console.log("결과: 5등");
                resultScore.innerHTML = "5등";
                resultComArray[count] = "5등";
                break;
                default:
                console.log("결과: 꽝");
                resultScore.innerHTML = "당첨되지 않았습니다.";
                resultComArray[count] = "낙첨";
                break;
            }
            console.log(resultComArray);
            count++;
            subjectNum();
            switchButton = 1;
    } else {
        alert("번호를 먼저 뽑아주세요.");
    }
    for(var i = 0; i < 6; i++) {
        document.getElementsByClassName("savePick")[i].value = "";
    }
}

function savePick() {
    if(validateForm()) {
        if(count < 20 && switchButton == 2) {
            if(count == 20) {
                alert("주어진 20회의 게임이 모두 끝났습니다.");
                return;
            }
            var lottoUserNum2 = new Array();
            var savepick = document.getElementsByClassName("savePick");
            var userButton = document.getElementsByClassName("userButton");
    
            console.log("manualpick:"+savepick);
            var flag = false;
            for(var i=0; i < savepick.length ; i++) { 
                if(!savepick[i].value) {
                    alert("빈 값을 입력하였습니다.");
                    return;
                }
                for(var j=i+1; j < savepick.length; j++) {
                    if(Number(savepick[i].value) == Number(savepick[j].value)) {
                        // alert(" i / j 같음 = " + savepick[i].value + " : " + savepick[j].value);
                        flag = true;
                    }
                }
                if(flag) {
                    alert("중복 값을 입력하였습니다");
                    savepick[i].focus();
                    return;
                }
            }
            if(!flag) { // 중복없음 
    
                // for 문으로 savepick value 깨너서 
                //  
                for(var i=0; i < savepick.length ; i++) { 
                    lottoUserNum2.push(savepick[i].value);
                }
            }
            for(var i = 0; i < lottoUserNum2.length; i++) {
                userButton[i].innerHTML = "<img src='images/ball_"+lottoUserNum2[i]+".png' alt='로또번호' />";
                userButton[i].clear;
            }
            lottoUserNum = lottoUserNum2;
            resultUserArray[count] = lottoUserNum2;
            switchButton = 3;
        } else {
            alert("컴퓨터 뽑기 버튼을 먼저 누르십시오.");
        }
    } else {
        return;
    }
} 

    function printResult() {
        
   var printResult = document.getElementById("pcResult");
   var userResult = document.getElementById("userResult");
   var lottoScore = document.getElementById("lottoScore");
   var countNum = document.getElementById("lottoNum");
   //tmpResultArray = "";
   var tmpComResult = "";
   var tmpCountNum = "";
   
   for (var i=0; i<count; i++) {
       tmpCountNum += "<p class='printCount'>" + (i+1) + "회" +"<br></p>";
       tmpComResult += "<p class='printCom'>" + resultComArray[i]+"<br></p>";
    }
    
    countNum.innerHTML = tmpCountNum;
    printResult.innerHTML = printImage(resultPcArray,1);
    userResult.innerHTML = printImage(resultUserArray,0);
    lottoScore.innerHTML = tmpComResult;
}


function printImage(tmpArray, num) {
    var ret = "";
    if(num == 1) {
        for(var i = 0; i < tmpArray.length; i++) {
            for(var j = 0; j < tmpArray[i].length; j++) {
                ret += "<img src='images/ball_"+tmpArray[i][j]+".png' width='24px' height='24px' alt='로또번호' />"
            }
            ret += "<img src='images/plus.png' alt='플러스' padding='0px' width='12px'/>"
                + "<img src='images/ball_"+bonusNum[i]+".png' width='24px' height='24px' alt='로또번호' />"
            ret += "<br>";
        }
       return ret;
    } else {
        for(var i = 0; i < tmpArray.length; i++) {
            for(var j = 0; j < tmpArray[i].length; j++) {
                ret += "<img src='images/ball_"+tmpArray[i][j]+".png' width='24px' height='24px' alt='로또번호' />";
            }
            ret += "<br>";
        }
       return ret;
    }
}

function printTwenty() {
    while(count < 20) {
        pickLottoPC();
        pickLottoUser();
        compareNum();
        printResult();
        switchButton = true;
    }
}
function validateForm() { 
    var x=document.getElementsByClassName("savePick"); 
    for(var i = 0; i < x.length; i++) {
        if (x[i].value < 1 || x[i].value > 45) { 
            alert("1부터 45까지의 수를 입력하셔야 합니다.");
            x[i].focus();
            return false;
        }
    }
    return true;
} 

function resetResult() {
    lottoPcNum.length = 0;
    lottoUserNum.length = 0;
    resultPcArray.length = 0;
    resultUserArray.length = 0;
    resultComArray.length = 0;
    count = 0;
    bonusNum.length = 0;
    switchButton = 1;

    document.getElementById("pcResult").innerHTML = "";
    document.getElementById("lottoNum").innerHTML = "";
    document.getElementById("userResult").innerHTML = "";
    document.getElementById("lottoScore").innerHTML = "";
    document.getElementById("pcp").innerHTML = "";
    document.getElementById("pcp1").innerHTML = "";
    document.getElementById("resultScore").innerHTML = "";
    subjectNum();
}
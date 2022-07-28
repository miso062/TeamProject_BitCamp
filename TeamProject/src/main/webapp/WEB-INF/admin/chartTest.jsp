<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
</head>
<body>
	<h2 id="visitor"></h2>
	<div style="width: 60%; height: 500px"><canvas id="line-chart"></canvas></div>
</body>
<script type="text/javascript">
var expireDate = new Date();
expireDate.setMonth(expireDate.getMonth()+3)
var hitCt = eval(cookieVal("pageHit"))
hitCt++
document.cookie = "pageHit="+hitCt+";expires=" + expireDate.toGMTString();
function cookieVal(cookieName) {
	thisCookie = document.cookie.split("; ")
	for(var i=0; i<thisCookie.length; i++){
		if(cookieName == thisCookie[i].split("=")[0]){
			return thisCookie[i].split("=")[1];
		}
	}
	return 0
}

$('#visitor').text(hitCt);


var today = new Date();
var calDate = new Date();
var arr = new Array();
calDate.setDate(today.getDate()-30);

for(var i=0; i<30; i++){
	calDate.setDate(calDate.getDate()+1);
	
	var yy = calDate.getFullYear();
	var mm = calDate.getMonth()+1;
	var dd = calDate.getDate();
	var dateString = yy + '-' + mm  + '-' + dd;
	console.log(i + " | " + dateString);
	arr[i] = dateString;
}

new Chart(document.getElementById("line-chart"), {
	type: 'line',
	data: {
		labels: arr,
		datasets: [{ 
			data: [3,14,16,16,11,21,15,24,20,18,25,26,36,33,39,25,36,40,27,46,52,43,35,36,32,48,46,48,50,30,51],
			label: "방문자",
			borderColor: "#ed575A",
			borderWidth: 1,
			lineTension: 0,
			fill: true
    	}]
	},
	options: {
		title: {
			display: true,
			text: '일일 방문자'
		}
	}
});
</script>
</html>
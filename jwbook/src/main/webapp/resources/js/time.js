/*
time.jsp 시계 구현
*/

setInterval(mywatch,1000);
function mywatch() {
	let date = new Date();
	let time = date.tolotoLocaleTimeString();
	document.getElementById("display").innerHTML = time;
}
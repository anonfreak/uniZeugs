/**
 * 
 */
function showPart1() {
	showPart("part.jsp?part=1");
}
function showPart2() {
	showPart("part.jsp?part=2");
}
function showPart(part) {
	var req = new XMLHttpRequest();
	req.onreadystatechange = function receive() {
		if (req.readyState == 4)
			document.getElementById("addresses").innerHTML = req.responseText;
	}
	req.open("GET", part, true);
	req.send();
}

/*
/**
 * 

function showPart1() {
	showPart("part_json.jsp?part=1");
}
function showPart2() {
	showPart("part_json.jsp?part=2");
}
function showPart(part) {
	var req = new XMLHttpRequest();
	req.onreadystatechange = function receive() {
		if (req.readyState == 4) {
			var addressList = req.responseText;
			for ( var address in addressList) {
				document.getElementById
			}
		}
	}
	req.open("GET", part, true);
	req.send();
}*/
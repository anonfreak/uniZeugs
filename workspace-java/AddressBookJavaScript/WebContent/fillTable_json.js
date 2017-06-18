/**
 * 
 */

function showPart1() {
	showPart("PartServlet?part=1");
}
function showPart2() {
	showPart("PartServlet?part=2");
}
function showPart(part) {
	var req = new XMLHttpRequest();
	req.onreadystatechange = function receive() {
		if (req.readyState == 4) {
			var addressList = JSON.parse(req.responseText);
			var addressTable = document.getElementById("addresses");
			addressTable.innerHTML='';
			for (var i = 0; i < addressList.length; i++) {
				var address = addressList[i];
				var tableRow = document.createElement("tr");
				addField(address.name,tableRow);
				addField(address.christianname,tableRow);
				addField(address.city,tableRow);
				addressTable.appendChild(tableRow);
			}
		}
	}
	req.open("GET", part, true);
	req.send();
}

function addField(content,row) {
	var field = document.createElement("td");
	field.textContent = content;
	row.appendChild(field);
}
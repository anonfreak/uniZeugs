<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- <script type="text/javascript" src="fillTable.js"></script>-->
 <script type="text/javascript" src="fillTable_json.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch</title>
</head>
<body>
	<table cellpadding="10em" rules="all" frame="border">
		<thead>
			<tr>
				<td>Name</td>
				<td>Vorname</td>
				<td>Ort</td>
			</tr>
		</thead>
		<tbody id="addresses" />
	</table>
	<br>
	<button id="button1" onclick="showPart1()">Teil1</button>
	<button id="button2" onclick="showPart2()">Teil2</button>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch (Login))</title>
</head>
<body>
	Bitte Benutzer und Password eingeben:
	<br>
	<form action="j_security_check" method="post">
		<label for="j_username">Benutzer</label> <input name="j_username" />
		<br> <label for="j_password">Passwort</label> <input
			name="j_password" type="password" /> <br>
		<button type="submit">Anmelden</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch (Liste)</title>
</head>
<body>
	<jsp:useBean id="AddressList" class="de.dhkarlsruhe.webengineering.beans.AddressList"></jsp:useBean>
	<input type="text"/>
	<table border="1px solid black">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Vorname</th>
		</tr>
		<c:forEach var="Address" items="${AddressList.addressList }">
			<tr>
				<td>${Address.id }</td>
				<td>${Address.name }</td>
				<td>${Address.christianname }</td>
				<td><a href="AddressDetail.jsp?id=${Address.id}">Click</button></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
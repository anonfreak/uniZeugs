<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="addressList" class="de.dhkarlsruhe.webengineering.beans.AddressList"></jsp:useBean>
<jsp:useBean id="address" class="de.dhkarlsruhe.webengineering.beans.Address"></jsp:useBean>
<c:set property="id" target="${address }" value="${param.id }"></c:set>
<c:if test="${!address.validId }">
	<jsp:setProperty property="errorMessage" name="AddressList"
		value="Ungültige Id" />
	<jsp:forward page="AddressList.jsp"></jsp:forward>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch (Details)</title>
</head>
<body>
	<table border="1px solid black">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Vorname</th>
			<th>Adresse</th>
			<th>Email</th>
			<th>Telefon</th>
			<th>Mobilnummer</th>
			<th>Straße</th>
			<th>Hausnummer</th>
			<th>Ort</th>
			<th>PLZ</th>
			<th>Land</th>
			<th>Geburtsdatum</th>
		</tr>
		<tr>
			<td>${address.id }</td>
			<td>${address.name }</td>
			<td>${address.christianname }</td>
			<td>${address.addressform }</td>
			<td>${address.email }</td>
			<td>${address.phone }</td>
			<td>${address.mobile }</td>
			<td>${address.street }</td>
			<td>${address.number }</td>
			<td>${address.city }</td>
			<td>${address.postcode }</td>
			<td>${address.country }</td>
			<td>${address.birthday }</td>
		</tr>
	</table>
	<a href="AddressList.jsp">Back to List</a>

</body>
</html>
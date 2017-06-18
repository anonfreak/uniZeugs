<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="addressList"
	class="de.dhkarlsruhe.webengineering.beans.AddressList" scope="request" />
<jsp:useBean id="address"
	class="de.dhkarlsruhe.webengineering.beans.Address" scope="request" />

<c:if test="${not empty param.id }">
	<jsp:setProperty property="id" name="address" value="${param.id }"/>
</c:if>
<c:if test="${!address.read() }">
	<jsp:setProperty property="errorMessage" name="addressList"
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
	<form action="delete">
		<table cellpadding="10em" rules="all" frame="border">
			<tbody id="address">
				<tr>
					<td>Name</td>
					<td><c:out value="${address.name }" /></td>
				</tr>
				<tr>
					<td>Vorname</td>
					<td>${address.christianname }</td>
				</tr>
				<tr>
					<td>Anrede</td>
					<td><c:out value="${address.addressform }" /></td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><c:out value="${address.email }" /></td>
				</tr>
				<tr>
					<td>Telefon</td>
					<td><c:out value="${address.phone }" /></td>
				</tr>
				<tr>
					<td>Mobil</td>
					<td><c:out value="${address.mobile }" /></td>
				</tr>
				<tr>
					<td>Straße</td>
					<td><c:out value="${address.street }" /></td>
				</tr>
				<tr>
					<td>Hausnummer</td>
					<td><c:out value="${address.number }" /></td>
				</tr>
				<tr>
					<td>Stadt</td>
					<td><c:out value="${address.city }" /></td>
				</tr>
				<tr>
					<td>PLZ</td>
					<td><c:out value="${address.postcode }" /></td>
				</tr>
				<tr>
					<td>Land</td>
					<td><c:out value="${address.country }" /></td>
				</tr>
				<tr>
					<td>Geburtstag</td>
					<td><c:out value="${address.birthday }" /></td>
				</tr>
			</tbody>
		</table>
		<br> <a href="AddressList.jsp">Liste</a> <a
			href="AddressForm.jsp?id=${address.id }">Bearbeiten</a>
		<button id="button+${address.id }" name="id" type="submit"
			value="${address.id }">Löschen</button>
	</form>
	<br>
</body>
</html>
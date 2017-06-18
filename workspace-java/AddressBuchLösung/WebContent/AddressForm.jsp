<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="addressList"
	class="de.dhkarlsruhe.webengineering.beans.AddressList" scope="request" />
<jsp:useBean id="address"
	class="de.dhkarlsruhe.webengineering.beans.Address" scope="request" />

<jsp:setProperty property="id" name="address" value="${param.id }" />
<c:if test="${not empty param.id && !address.read() }">
	<jsp:setProperty property="errorMessage" name="addressList"
		value="Ungültige Id" />
	<jsp:forward page="AddressList.jsp"></jsp:forward>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch (Formular)</title>
</head>
<body>
	<form action="save">
		<table cellpadding="10em" rules="all" frame="border">
			<tbody id="address">
				<tr>
					<td><label for="name">Name</label></td>
					<td><input name="name" value="${address.name }" /></td>
				</tr>
				<tr>
					<td><label for="christianname">Vorname</label></td>
					<td><input name="christianname"
						value="${address.christianname }" /></input</td>
				</tr>
				<tr>
					<td><label for="addressform">Anrede</label></td>
					<td><input name="addressform" value="${address.addressform }" /></td>
				</tr>
				<tr>
					<td><label for="email">E-Mail</label></td>
					<td><input name="email" value="${address.email }" /></td>
				</tr>
				<tr>
					<td><label for="phone">Telefon</label></td>
					<td><input name="phone" value="${address.phone }" /></td>
				</tr>
				<tr>
					<td><label for="mobile">Mobil</label></td>
					<td><input name="mobile" value="${address.mobile }" /></td>
				</tr>
				<tr>
					<td><label for="street">Straße</label></td>
					<td><input name="street" value="${address.street }" /></td>
				</tr>
				<tr>
					<td><label for="number">Hausnummer</label></td>
					<td><input name="number" value="${address.number }" /></td>
				</tr>
				<tr>
					<td><label for="city">Stadt</label></td>
					<td><input name="city" value="${address.city }" /></td>
				</tr>
				<tr>
					<td><label for="postcode">PLZ</label></td>
					<td><input name="postcode" value="${address.postcode }" /></td>
				</tr>
				<tr>
					<td><label for="country">Land</label></td>
					<td><input name="country" value="${address.country }" /></td>
				</tr>
				<tr>
					<td><label for="birthday">Geburtstag</label></td>
					<td><input name="birthday" value="${address.birthday }" /></td>
				</tr>
			</tbody>
		</table>
		<br>
		<c:choose>
			<c:when test="${empty address.id }">
				<a href="AddressList.jsp">Abbrechen</a>
			</c:when>
			<c:otherwise>
				<a href="AddressDetail.jsp?id=${address.id }">Abbrechen</a>
			</c:otherwise>
		</c:choose>
		<input name="id" type="hidden" value="${address.id }" />
		<button name="save" type="submit">Speichern</button>
	</form>

	<br>
</body>
</html>
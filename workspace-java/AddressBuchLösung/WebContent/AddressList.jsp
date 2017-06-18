<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="addressList"
	class="de.dhkarlsruhe.webengineering.beans.AddressList" scope="request" />

<c:set property="searchString" target="${addressList }"
	value="${param.search }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adressbuch (Liste)</title>
</head>
<body>
	<span style="color: red"> <c:out
			value="${addressList.errorMessage }" /></span>
	<form action="AddressList.jsp">
		<label for="search">Suche</label> <input name="search"
			value="${param.search }" />
	</form>
	<br>
	<form action="delete">
		<table cellpadding="10em" rules="all" frame="border">
			<thead>
				<tr>
					<td>Name</td>
					<td>Vorname</td>
					<td>E-Mail</td>
					<td>Aktionen</td>
				</tr>
			</thead>
			<tbody id="addresses">
				<c:forEach items="${addressList.addressList}" var="address">
					<tr>
						<td><c:out value="${address.name }" /></td>
						<td><c:out value="${address.christianname }" /></td>
						<td><c:out value="${address.email }" /></td>
						<td>
							<button id="button+${address.id }" name="id" type="submit"
								value="${address.id }">Löschen</button> <a
							href="AddressDetail.jsp?id=${address.id }">Details</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <a href="AddressForm.jsp">Neue Adresse</a>
	</form>

	<br>
</body>
</html>
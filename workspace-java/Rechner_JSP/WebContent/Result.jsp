<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rechner</title>
</head>
<body>
	<h1>Rechner</h1>
	<span id="ergebnis">
		Das Ergebnis von
		<c:out value="${param.Zahl1 }" />
		<c:out value="${param.Operation }" />
		<c:out value="${param.Zahl2 }" />
		ist
		<c:choose>
			<c:when test="${param.Operation=='+' }">
				<c:out value="${param.Zahl1 +param.Zahl2}" />
			</c:when>
			<c:when test="${param.Operation=='-' }">
				<c:out value="${param.Zahl1 -param.Zahl2}" />
			</c:when>
			<c:when test="${param.Operation=='*' }">
				<c:out value="${param.Zahl1 *param.Zahl2}" />
			</c:when>
			<c:when test="${param.Operation=='/' }">
				<c:out value="${param.Zahl1 /param.Zahl2}" />
			</c:when>
			<c:when test="${param.Operation=='%' }">
				<c:out value="${param.Zahl1 %param.Zahl2}" />
			</c:when>
			<c:otherwise>
				<c:out value="ungültige Rechenoperation!" />
			</c:otherwise>
		</c:choose>
	</span>
</body>
</html>
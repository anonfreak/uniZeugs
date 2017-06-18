<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rechner</title>
</head>

<%!boolean checkZahl(String zahl) {
		if (zahl != null && zahl != "") {
			try {
				Double.valueOf(zahl);
			} catch (NumberFormatException nfe) {
				return false;
			}
		}
		return true;

	}%>

<body>
	<%-- Check input --%>
	<c:if
		test="${(not empty param) && (param.Operation!='+') && (param.Operation!='-') && (param.Operation!='*') && (param.Operation!='/') && (param.Operation!='%')}">
		<c:set var="illegaleOperation">true</c:set>
	</c:if>
	<c:if test="${param.Operation=='/' && param.Zahl2=='0'  }">
		<c:set var="divisionDurch0">true</c:set>
	</c:if>

	<%
		if (!checkZahl(request.getParameter("Zahl1"))) {
	%>
	<c:set var="illegaleZahl1">true</c:set>
	<%
		}
	%>

	<%
		if (!checkZahl(request.getParameter("Zahl2"))) {
	%>
	<c:set var="illegaleZahl2">true</c:set>
	<%
		}
	%>
	
	<c:if
		test="${(not empty param) && (illegaleOperation!='true') && (divisionDurch0!='true') && (illegaleZahl1!='true')  && (illegaleZahl2!='true')}">
		<jsp:forward page="Result.jsp"></jsp:forward>
	</c:if>
	


	<h1>Rechner</h1>
	<form method="post">
		<p>Geben Sie bitte folgende Daten ein:</p>
		<p>
			<label for="Zahl1">Zahl1</label> <input name="Zahl1" type="text"
				value="${param.Zahl1}" />
			<c:if test="${illegaleZahl1=='true' }">
				<span style="color: red">Bitte eine Zahl eingeben!</span>
			</c:if>
		</p>
		<p>
			<label for="Zahl2">Zahl2</label> <input name="Zahl2" type="text"
				value="${param.Zahl2}" />
			<c:if test="${divisionDurch0=='true' }">
				<span style="color: red">Durch 0 Teilen ist nicht erlaubt!</span>
			</c:if>
			<c:if test="${illegaleZahl2=='true' }">
				<span style="color: red">Bitte eine Zahl eingeben!</span>
			</c:if>
		</p>
		<p>
			<label for="Operation">Rechenoperation</label> <input
				name="Operation" type="text" value="${param.Operation}" />
			<c:if test="${illegaleOperation=='true' }">
				<span style="color: red">Es sind nur '+', '-', '*', '/' und
					'%' erlaubt!</span>
			</c:if>
		</p>
		<p>
			<button name="calculate" type="submit">Berechnen</button>
		</p>
	</form>

</body>
</html>
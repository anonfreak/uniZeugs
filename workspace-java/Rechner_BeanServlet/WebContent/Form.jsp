<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="calculatorBean"
	class="de.dhkarlsruhe.webengineering2.beans.CalculatorBean"
	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rechner</title>
</head>

<body>

	<h1>Rechner</h1>
	<form method="post" action="OKServlet">
		<p>Geben Sie bitte folgende Daten ein:</p>
		<p>
			<label for="Zahl1">Zahl1</label> <input name="Zahl1" type="text"
				value="${param.Zahl1}" /> <span style="color: red"> <c:out
					value="${calculatorBean.errorMessageZahl1}" /></span>
		</p>
		<p>
			<label for="Zahl2">Zahl2</label> <input name="Zahl2" type="text"
				value="${param.Zahl2}" /> <span style="color: red"> <c:out
					value="${calculatorBean.errorMessageZahl2}" /></span>
		</p>
		<p>
			<label for="Operation">Rechenoperation</label> <input
				name="Operation" type="text" value="${calculatorBean.operation}" /> <span
				style="color: red"> <c:out
					value="${calculatorBean.errorMessageOperation}" /></span>
		</p>
		<p>
			<button name="calculate" type="submit">Berechnen</button>
		</p>
	</form>

</body>
</html>
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
	<span id="ergebnis"> Das Ergebnis von <c:out
			value="${calculatorBean.zahl1 }" /> <c:out
			value="${calculatorBean.operation }" /> <c:out
			value="${calculatorBean.zahl2 }" /> ist <c:out
			value="${calculatorBean.result }" />
	</span>
</body>
</html>
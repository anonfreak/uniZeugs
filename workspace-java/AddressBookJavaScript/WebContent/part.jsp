<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="addressBean"
	class="de.dhkarlsruhe.webengineering.beans.AddressList" />

<c:set property="part" target="${addressBean }" value="${param.part }"></c:set>

<c:forEach items="${addressBean.partList}" var="address">
	<tr>
		<td><c:out value="${address.name }" /></td>
		<td><c:out value="${address.christianname }" /></td>
		<td><c:out value="${address.city }" /></td>
	</tr>
</c:forEach>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="addressBean"
	class="de.dhkarlsruhe.webengineering.beans.AddressList" />

<c:set property="part" target="${addressBean }" value="${param.part }"></c:set>

[
<c:forEach items="${addressBean.partList}" var="address"
	varStatus="loopStatus">
	{"name":"${address.name }",
	 "christianname":"${address.christianname }",
	 "city":"${address.city }"}
	  <c:if test="${!loopStatus.last }">
		<c:out value="," />
	  </c:if>
</c:forEach>
]

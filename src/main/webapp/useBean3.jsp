<%@page import="util.Alpha"%>
<%@page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean3.jsp</title>
</head>
<body>
<h1>Alpha1 5X5</h1>
<hr>
<jsp:include page="alpha.jsp">
	<jsp:param value="5" name="line"/>
	<jsp:param value="5" name="column"/>
</jsp:include>
<hr>
<h2>Alpha2 7X7</h2>
<jsp:include page="alpha.jsp">
	<jsp:param value="7" name="line"/>
	<jsp:param value="7" name="column"/>
</jsp:include>
<h3>Alpha3 3X15</h3>
<jsp:include page="alpha.jsp">
	<jsp:param value="3" name="line"/>
	<jsp:param value="15" name="column"/>
</jsp:include>
<h4>Alpha4 10X10</h4>
<jsp:include page="alpha.jsp"/>


</body>
</html>
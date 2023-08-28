<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actiontag.jsp</title>
</head>
<body>
<c:forEach var = "i" begin = "0" end = "10">
<span>${i}</span><br>
</c:forEach>
<jsp:useBean id="alpha" class = "util.Alpha"/>
<h2>${alpha}</h2>
<hr>
<c:forEach var = "i" begin = "0" end = "5">
	<jsp:useBean id="a" class="util.Alpha"/>
	<li>${a}</li>
	<c:remove var="a"/>
</c:forEach>
</body>
</html>
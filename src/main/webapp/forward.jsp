<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward.jsp</title>
</head>
<body>
<h1>Forward 시킴</h1>
<jsp:useBean id="alpha" class="util.Alpha" scope="request"/>
<jsp:useBean id="alpha2" class="util.Alpha" scope="request"/>
<jsp:forward page="result.jsp"/>
</body>
</html>
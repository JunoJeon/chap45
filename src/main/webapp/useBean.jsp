<%@page import="util.Alpha"%>
<%@page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean.jsp</title>
</head>
<body>

<%
	var alpha = new Alpha();
	out.println(alpha);
%>
<hr>
<jsp:useBean id="a" class = "util.Alpha"/>
${a.line} ${a.column} ${a.fg} ${a.bg} ${a.ch} <br>
<hr>
<jsp:useBean id="b" class = "util.Alpha"/>
<jsp:setProperty property="line" name="b" value="10"/>
<jsp:setProperty property="column" name="b" value="20"/>
<jsp:setProperty property="fg" name="b" value = "<%=Color.Black%>"/>
<jsp:setProperty property="bg" name="b" value = "<%=Color.Red %>"/>
<jsp:setProperty property="ch" name="b" value = "A"/>
${b}
</body>
</html>
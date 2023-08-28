<%@page import="util.Alpha"%>
<%@page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean2.jsp</title>
</head>
<body>
<ol>
	<c:forEach var="i" begin="0" end="10">
		<jsp:useBean id="alpha" class="util.Alpha"/>
		<li style="font-family: monospace;">
			<span style="color : ${alpha.fg}; background: ${alpha.bg};">
<%-- 				<jsp:getProperty property="ch" name="alpha"/> --%>
					${alpha.ch}
			</span>
		</li>
		<c:remove var="alpha"/>
	</c:forEach>
</ol>
<hr>
<table>
	<tbody>
		<c:forEach var="i" begin="0" end="10">
			<tr>
				<c:forEach var="j" begin="0" end="39">
					<jsp:useBean id="a" class="util.Alpha"/>
					<td style="color : ${a.fg}; background: ${a.bg};">${a.ch}</td>
					<c:remove var="a"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>
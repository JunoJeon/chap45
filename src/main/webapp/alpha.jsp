<%@page import="util.Alpha"%>
<%@page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:if test = "${empty param.line}">
	<c:set var="line" value = "10"/>
</c:if>
<c:if test = "${not empty param.line}">
	<c:set var="line" value = "${param.line}"/>
</c:if>
<c:if test = "${empty param.column}">
	<c:set var="column" value = "10"/>
</c:if>
<c:if test = "${not empty param.column}">
	<c:set var="column" value = "${param.column}"/>
</c:if>

<table>
	<tbody>
		<c:forEach var="i" begin="0" end="${line - 1}">
			<tr>
				<c:forEach var="j" begin="0" end="${column - 1}">
					<jsp:useBean id="a" class="util.Alpha"/>
					<td style="color : ${a.fg}; background: ${a.bg};">${a.ch}</td>
					<c:remove var="a"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc.jsp</title>
</head>
<body>

<jsp:useBean id="c" class="ch07.Calculator"/>
<jsp:setProperty property="*" name="c"/>
<h1>계산 결과</h1>
<hr>
${c.n1} ${c.op} ${c.n2} = ${c.calc()}
<hr>
<a href="calcForm.jsp">calcForm.jsp</a>
</body>
</html>
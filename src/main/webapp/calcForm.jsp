<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calForm.jsp</title>
</head>
<body>
<h1>계산기 Form</h1>
<hr>
<form action="calc.jsp">
	<input name = "n1">
		<select name = "op">
			<option>+</option>	
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
	<input name = "n2">
	<input type="submit" value="계산">
</form>
</body>
</html>
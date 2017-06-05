<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="POST">
		Email:<input type="text" name="username" /><br />
		<br /> Password:<input type="password" name="password" /><br />
		<br /> <input type="submit" value="login" />
		<!-- <input type="hidden" name="_csrf" value="69bce4f5-65c0-4e34-bbb0-cd3bcdabb140" /></form>
 -->
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<%-- <sec:authentication var="principal" property="principal" /> --%>
		<%-- ${principal.username} --%>
	</form>
</body>
</html>
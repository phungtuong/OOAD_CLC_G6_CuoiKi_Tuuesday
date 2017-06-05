<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/app.css" />" rel="stylesheet"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='http://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
</head>

<body class="login"> 

<div class="middlePage">
<div class="page-header">
  <h1 class="logo"> <big>Spring Security for Spring MVC Application!</big></h1>
</div>

<div class="panel panel-info">
  <div class="panel-heading">
    <h1 class="panel-title">Please Sign In</h1>
  </div>
  <div class="panel-body">
  
  <div class="row">
  
<div class="col-md-5" >

</div>

    <div class="col-md-7" style="border-left:1px solid #ccc;height:160px">

	<form action="login" method="POST">
		<div class="lc-block">
			<div>
				<input type="text" class="style-4" name="username"
					placeholder="User Name" />
			</div>
			<div>
				<input type="password" class="style-4" name="password"
					placeholder="Password" />
			</div>
			<div>
				<input type="submit" value="Sign In" class="button red small" />
			</div>
			<c:if test="${param.error ne null}">
				<div class="alert-danger">Invalid username and password.</div>
			</c:if>
			<c:if test="${param.logout ne null}">
				<div class="alert-normal">You have been logged out.</div>
			</c:if>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	</div>
    
</div>
    
</div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Mini Bank - Halaman Login</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="home"><b>Mini Bank</b></a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a><span class="glyphicon glyphicon-user"></span> Hi~</a></li>
			</ul>
		</div>
	</nav>
	<div class="container login">
		<h2>
			<b>Mini Bank - Login</b>
		</h2>
		<h5>Silahkan masukkan username dan password :</h5>
		<c:if test="${null != error_message}">
			<div class="alert alert-danger" style="border-radius: 0px">
				<strong>${error_message} </strong>
			</div>
		</c:if>
		<c:if test="${null != logout_message}">
			<div class="alert alert-success" style="border-radius: 0px">
				<strong>${logout_message} </strong>
			</div>
		</c:if>

		<form name='login' action="login" method='POST'>
			<div class="form-group">
				<input type="text" class="form-control" id="username"
					placeholder="Username" name="username">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="password"
					placeholder="Password" name="password">
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<button type="submit" class="btn btn-default">
				<span class="glyphicon glyphicon-log-in"></span> Login
			</button>
		</form>
	</div>
</body>
</html>
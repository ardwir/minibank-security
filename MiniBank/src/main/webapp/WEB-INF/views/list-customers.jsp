<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ page isELIgnored="false"%>
</head>
<h1>Welcome Web Application</h1>
<body>

	<table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Nama</th>
            <th>Username</th>
            <th>Password</th>
        </tr>
        <c:forEach items="${nasabahh}" var="nasabah">
        <tr>
            <td>${nasabah.id}</td>
            <td>${nasaba.nama}</td>
            <td>${nasabah.username}</td>
            <td>${nasabah.password}</td>
        </tr>
        </c:forEach>
    </table>

</body>
</html>
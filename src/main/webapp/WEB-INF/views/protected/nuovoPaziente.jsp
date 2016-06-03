<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<<<<<<< HEAD
<title>Clinica Healthy - Area amministrazione</title>
 <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
=======
<title>Aggiungi un nuovo Paziente</title>
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
>>>>>>> refs/remotes/origin/master

<!-- Custom CSS -->
<link href="<c:url value="/resources/css/shop-homepage.css" />"
	rel="stylesheet">
</head>
<body>
	<img src="<c:url value="/resources/Grafica/logo3.jpg"/>">

	<center>
		<h4>Aggiungi un nuovo paziente</h4>

		<form:form method="post" action="addPaziente"
			modelAttribute="paziente" name="form">
			<table>
				<tr>
					<td><font size="3" color="red">${nomeError}</font></td>
				</tr>
				<tr>
					<td>Nome Paziente :</td>
					<td><form:input type="text" path="nome" placeholder="nome" /></td>
				</tr>
				<tr>
					<td><font size="3" color="red">${cognomeError}</font></td>
				</tr>

				<tr>
					<td>Cognome Paziente :</td>
					<td><form:input type="text" path="cognome"
							placeholder="cognome" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="invia" /></td>
				</tr>
			</table>
		</form:form>
		<br> <a href="index">Torna alla homepage</a>
	</center>
</body>
</html>
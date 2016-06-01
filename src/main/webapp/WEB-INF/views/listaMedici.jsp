<%@page import="clinica.service.impl.FacadeDati"%>
<%@ page import="clinica.model.Medico"%>
<%@ page import="clinica.dao.impl.MedicoDaoJPA"%>
<%@ page import="java.util.List"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Clinica Healthy - lista medici</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
</head>

<body>
	<img src="http://susysksiw.altervista.org/logo3.jpg">

	<h4>
		<center>Consulta l'elenco dei nostri medici</center>
	</h4>
	<center>
		<% 	
						for(Medico tipo: new FacadeDati().findAllMedici()){
							out.print("Nome:"); 
							out.print(tipo.getNome());
							out.print("<br>");
							out.print("Cognome:"); 
							out.print(tipo.getCognome());
							out.print("<br>"); 
							out.print("Specializzazione:"); 
							out.print(tipo.getSpecializzazione());
							out.print("<br>"); 
							out.print("------------------------------");
							out.print("<br>"); 
							}%>
							  <h4><a href="index.html">Torna alla homepage</a>
                                </h4>
		<tr>
		</tr>
		<br>
		<center>
</body>
</html>

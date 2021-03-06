<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Clinica Healthy - Area utente</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
 <style type="text/css">
	 body { 
    background-image: url('./resources/Grafica/background.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: right;
}
	   </style>
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">
</head>
<script type="text/javascript" language="javascript">
function visualizza(id){
  if (document.getElementById){
    if(document.getElementById(id).style.display == 'none'){
      document.getElementById(id).style.display = 'block';
    }else{
      document.getElementById(id).style.display = 'none';
    }
  }
}
</script>
 <style type="text/css">
	 body { 
    background-image: url('./resources/Grafica/background.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: right;
}
	   </style>
<body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<div class="container">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="utente">Area Utente:</a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">

			<li><a class="navbar-brand" style="color: red">
					${pageContext.request.userPrincipal.name}</a></li>

			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container --> </nav>
<center>          <img src="<c:url value="/resources/Grafica/logo3.jpg"/>">
  <h4><center>Area dedicata agli utenti</center>    </h4>

 <br>Per consultare i risultati degli esami inserisci il codice personale:

<form method="post" action="mostraRisultatiPaziente" name="form">
				<td><input type='text' name="code" placeholder="codice"/></td>
		<td><font size="3" color="red">${idError}</font></td><br>
		<input type="submit" value="invia" />	<br>
</form>

	<% if (request.getAttribute("pazienteNome")!=null) 
	out.print("Stai consultando le informazioni di ");%>
	${paziente.nome} ${paziente.cognome}<br/>
	<font size="3" color="red">${pazienteError}</font><br>
	<a href="<c:url value="/j_spring_security_logout" />" style="color:red"><b>(Logout)</b></a><br>
	<c:forEach items="${listaEsamiPaziente}" var="esame" varStatus="status">
		<a href="<c:url value="#immagine${status.index}" />" onclick="visualizza('immagine${status.index}');">
		
				Tipologia d'esame:${esame.tipologia}		<br/>		
			</a>
			<div id="immagine${status.index}" style="display: none">
		<c:if test="${empty esame.risultati}">
				 	
   <p><c:out value="Nessun Risultato"/><p>
   <hr  size=”60″ width=”200″ color=”green” noshade>
   </c:if>
	<c:forEach items="${esame.risultati}" var="risultati" varStatus="status">
	
						 <b><u>Tipo risultato</u></b>: ${risultati.key}<br/>
						  <b><u>Valore risultato</u></b>: ${risultati.value}<br/>
						 	<hr  size=”60″ width=”200″ color=”green” noshade>
						 	</p>
							</c:forEach></div>
								</c:forEach>
										
		
		<table>
				<tr>
                                   <h4><br><a href="index.html">Torna alla homepage</a>
                                  
                                
				
</body>
</html>
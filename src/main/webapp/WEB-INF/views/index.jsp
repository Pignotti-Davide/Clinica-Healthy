<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clinica Healthy</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin">Area Amministrazione:</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
<<<<<<< HEAD
                    <li>
                       <a class="navbar-brand" style="color:red"> ${pageContext.request.userPrincipal.name}</a>
                    </li>
=======
               
>>>>>>> refs/remotes/origin/master
                    <li>
                      
                    </li>
                    <li>
               
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
          
                <div class="list-group">
                    <h2>Contact Us</h2>
                <address>
                    <strong>Ingegneria informatica Roma Tre</strong>
                    <br>Via della Vasca Navale 79
                    <br>Roma, 2016
                    <br>
                </address>
                <address>
                    <abbr title="Member1">Davide Pignotti:</abbr><a href="mailto:#">name@example.com</a>
                    <br>
                    
                    <abbr title="Member2">Susanna Marinai:</abbr> <a href="mailto:#">name@example.com</a>
                </address>
                Bla bla bla bla clinica che offre questi sercizi etc nasce come progetto per l'esame di Sistemi Informativi su Web della facolt� di Ingegneria informatica Roma Tre tenutosi nel 2016 bla bla bla chiacchiere
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                    <img src="<c:url value="/resources/Grafica/logo3.jpg"/>">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="<c:url value="/resources/Grafica/pubb1.jpg"/>" alt="">
                                </div>
                                <div class="item">
                               <img class="slide-image" src="<c:url value="/resources/Grafica/pubb2.jpg"/>" alt="">
                                </div>
                                <div class="item">
                                
                           <img class="slide-image" src="<c:url value="/resources/Grafica/pubb3.jpg"/>" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="<c:url value="#carousel-example-generic" />" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="<c:url value="#carousel-example-generic" />"  data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="<c:url value="/resources/Grafica/offerte.jpg"/>" alt="">
                            <div class="caption">
                  
                                <h4><a href="#">Accedi all'area paziente</a>
                                </h4>
                                <p>Avrai la possibilit� di  consultare i risultati dei tuoi esami attraverso un'autentificazione</a>.</p>
                            </div>
                           
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                          <img src="<c:url value="/resources/Grafica/offerte2.jpg"/>" alt="">
                            <div class="caption">
           
                                <h4><a href="listaMedici.jsp">Conosci i nostri medici</a>
                                </h4>
                                <p>Potrai conoscere la lista dei nostri medici e gli esami da loro svolti.</p>
                            </div>
                          
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                      <div class="thumbnail">
                        <img src="<c:url value="/resources/Grafica/offerte3.jpg"/>" alt="">
                        <div class="caption">
                  
                                <h4><a href="listaTipologiaEsami.jsp">Lista tipologie esami</a>
                                </h4>
                                <p>Troverai la lista di tutti gli esami svolti dalla clinica e tutte le informazioni relative ad essi</p>
                          </div>
</div>
                    </div>

                   

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Susanna Marinai & Davide Pignotti 2016 - progetto esame "Sistemi informativi su Web" Roma Tre</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="<c:url value="/resources/js/jquery.js" />"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>

</html>

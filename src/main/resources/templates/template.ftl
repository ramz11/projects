<#import "/spring.ftl" as spring/>
<#global contextroot><@spring.url ''/></#global>
<#macro render>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${contextroot}/assets/favicon.ico">

    <title>Therapie</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${contextroot}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextroot}/assets/css/landing-page.css">
  </head>

  <body>
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Therapie</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/therapie">Acceuil<span class="sr-only">(current)</span></a></li>
        <li><a href="/therapie/create-client">Prendre un rendez-vous</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${contextroot}/admin-login">Login</a></li>
      </ul>
    </div>
  </div>
</nav>

		<div class="container">
		<#if alertSuccess??>
		  <div class="row">
		    <div class="col-lg-12">
		    	<div class="alert alert-success">${alertSuccess}</div>	
		    </div>
		   </div>
		  </#if>

		<#if alertError??>
		  <div class="row">
		    <div class="col-lg-12">
		    	<div class="alert alert-danger">${alertError}</div>	
		    </div>
		   </div>
		  </#if>

			<main class="row">
		  		<#nested/>
		  	</main>

		<!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Acceuil</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">Information</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Nous joindres</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; Your Company 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
		</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${contextroot}/assets/js/bootstrap.min.js"></script>
  </body>
</html>
</#macro>
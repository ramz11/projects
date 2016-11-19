<#import "/spring.ftl" as spring/>
<#global contextroot><@spring.url ''/></#global>
<#macro render windowtitle="Therapie" additionalCss="" additionalScripts="">
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${contextroot}/assets/favicon.ico">

    <title>${windowtitle}</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${contextroot}/assets/css/bootstrap.min.css">
    ${additionalCss}
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
      <a class="navbar-brand" href="${contextroot}">Therapie</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/therapie">Acceuil<span class="sr-only">(current)</span></a></li>
        <li><a href="/therapie/create-client">Prendre un rendez-vous</a></li>
      </ul>
      
			<#if principal??>
				<#assign name><#if principal.firstname?? && principal.lastname??>${principal.firstname} ${principal.lastname}<#else/>${principal.username}</#if></#assign>
				<ul class="nav navbar-nav navbar-right">
					<li class="active dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> <span class="caret"/></a>
						<ul class="dropdown-menu" role="menu">
							<li><a>Signed in as <strong>${name}</strong></a></li>
							<li class="divider"/>
							<li><a href="${contextroot}/auth/profile">Your profile</a></li>
							<li><a href="${contextroot}/help">Help</a></li>
							<li class="divider"/>
							<li><a href="${contextroot}/logout">Sign out</a></li>
						</ul>
					</li>
				</ul>
			<#else/>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextroot}/admin-login">Sign in</a></li>
					<li class="active"><a href="${contextroot}/sign-up">Sign up</a></li>
				</ul>
			</#if>
		</div>

  </div>
</nav>

		<div class="container">
			<#if alertSuccess??>
				<div class="row">
					<div class="col-lg-12">
						<div class="alert alert-dismissible alert-success">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							${alertSuccess}
						</div>
					</div>
				</div>
			</#if>
			
			<#if alertError??>
				<div class="row">
					<div class="col-lg-12">
						<div class="alert alert-dismissible alert-danger">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							${alertError}
						</div>
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

    <script src="${contextroot}/assets/js/jquery.min.js"></script>
    <script src="${contextroot}/assets/js/bootstrap.min.js"></script>

    ${additionalScripts}
    
  </body>
</html>
</#macro>
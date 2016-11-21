<#import "/spring.ftl" as spring/>
<#global contextroot><@spring.url ''/></#global>
<#assign togglelang><@spring.message "toggle-language"/></#assign>
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
      <a class="navbar-brand" href="${contextroot}/"><@spring.message "nav-bar.brand"/></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${contextroot}/"><@spring.message "nav-bar.home-link"/><span class="sr-only">(current)</span></a></li>
        <li><a href="${contextroot}/contact-us"><@spring.message "nav-bar.contact-us"/></a></li>
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
							<li><a href="${contextroot}/logout"><@spring.message "nav-bar.sign-out"/></a></li>
						</ul>
					</li>
				</ul>
			<#else/>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextroot}/admin-login"><@spring.message "nav-bar.sign-in"/></a></li>
					<li class="active"><a href="${contextroot}/sign-up"><@spring.message "nav-bar.sign-up"/></a></li>
					<li><a href="?locale=${togglelang}"><@spring.message "language"/></a></li>
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
                            <a href="${contextroot}/"><@spring.message "footer.home-link"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about"><@spring.message "footer.info"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services"><@spring.message "footer.services"/></a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="/therapie/contact-us"><@spring.message "footer.contact-us"/></a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small"><@spring.message "footer.copyright"/></p>
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
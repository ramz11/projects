<#import "/template.ftlh" as template/>
<#import "/spring.ftl" as spring/>

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
					<li><a href="#" data-toggle="modal" data-target="#signin"><i class="fa fa-sign-in fa-fw" aria-hidden="true"></i><@spring.message "nav-bar.sign-in"/></a></li>
					<li class="active"><a href="${contextroot}/sign-up"><@spring.message "nav-bar.sign-up"/></a></li>
					<li><a href="?locale=${togglelang}"><@spring.message "language"/></a></li>
				</ul>
			</#if>
		</div>

  </div>
</nav>
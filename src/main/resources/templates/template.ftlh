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
  
	<#include "nav-bar.ftlh"/>

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
		</div>
		<#include "footer.ftlh"/>

    <script src="${contextroot}/assets/js/jquery.min.js"></script>
    <script src="${contextroot}/assets/js/bootstrap.min.js"></script>

    ${additionalScripts}
    
  </body>
</html>
</#macro>
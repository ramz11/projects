<#import "/template.ftl" as template/>
<#import "/spring.ftl" as spring/>

<#assign additionalCss>
    <link rel="stylesheet" href="${contextroot}/assets/css/bootstrap-datetimepicker.css">
</#assign>

<#assign additionalScripts>
	<script src="${contextroot}/assets/js/moment-with-locales.js"></script>
	<script src="${contextroot}/assets/js/bootstrap-datetimepicker.js"></script>

	<script>
		$(function () {
			$('#startDateTime').datetimepicker();
		});	
	</script>
</#assign>

<@template.render additionalCss=additionalCss additionalScripts=additionalScripts>
 <div class="col-lg-12">
  <div class="well">
	<form name="client" method="post" class="form-horizontal">
		<fieldset>
			<legend>Book an appointment</legend>
			    <div class="form-group">
				        <label class="col-lg-2 control-label" for="startDateTime">Date</label>
					<div class="col-lg-10">
				    	<div class='input-group date' id='startDateTime'>
				        	<input type='text' class="form-control" />
				        	<span class="input-group-addon">
				                 <span class="glyphicon glyphicon-calendar"></span>
				            </span>
				        </div>
				    </div>    
				</div>   
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary">Submit</button>
						<a class="btn btn-link" href="${contextroot}">Cancel</a>
					</div>
				</div>
		</fieldset>
	</form>
  </div>
 </div>
</@template.render>
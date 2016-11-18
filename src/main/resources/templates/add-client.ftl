<#import "/template.ftl" as template/>
<#import "/spring.ftl" as spring/>

<@template.render>
 <div class="col-lg-12">
  <div class="well">
	<form name="client" method="post" class="form-horizontal">
		<fieldset>
			<legend>Book an appointment</legend>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="firstname">Prenom</label>
					<div class="col-lg-10">
						<input type="text" name="firstname" class="form-control" placeholder="Prenom">
					</div>
			    </div>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="lastname">Nom de famille</label>
					 <div class="col-lg-10">
						<input type="text" name="lastname" class="form-control" placeholder="Nom de famille">
					 </div>
			    </div>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="phonenumber">Numero de téléphone</label>
					<div class="col-lg-10">
						<input type="text" name="phonenumber" class="form-control" placeholder="Numero de téléphone">
					</div>
			    </div>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="email">Email</label>
					<div class="col-lg-10">
						<input type="text" name="email" class="form-control" placeholder="Email">
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
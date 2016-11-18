<#import "/template.ftl" as template/>
<#import "/spring.ftl" as spring/>

<@template.render>
 <div class="col-lg-12">
  <div class="well">
	<form name="client" method="post" class="form-horizontal">
		<fieldset>
			<legend>Administration login</legend>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="username">Username</label>
					<div class="col-lg-10">
						<input type="text" name="username" class="form-control" placeholder="Username">
					</div>
			    </div>
				<div class="form-group">
						<label class="col-lg-2 control-label" for="password">Password</label>
					 <div class="col-lg-10">
						<input type="text" name="password" class="form-control" placeholder="Password">
					 </div>
			    </div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary">Login</button>
						<a class="btn btn-link" href="${contextroot}">Cancel</a>
					</div>
				</div>
		</fieldset>
	</form>
  </div>
 </div>
</@template.render>
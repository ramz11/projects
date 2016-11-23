<#import "/spring.ftl" as spring/>

	<div class="col-lg-12">
 		<div class="well">
			<div class="modal fade" id="signin">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-body">
			       <form method="post" class="form-horizontal">
				<fieldset>
					<legend>Administration login</legend>
						<div class="form-group">
							<label class="col-lg-2 control-label" for="username"><@spring.message "sign-in.username.label"/></label>
							<div class="col-lg-10">
								<input type="text" name="username" class="form-control" placeholder=<@spring.message "sign-in.username.placeholder"/>>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="password"><@spring.message "sign-in.password.label"/></label>
							 <div class="col-lg-10">
								<input type="password" name="password" class="form-control" placeholder=<@spring.message "sign-in.password.placeholder"/>>
							 </div>
						</div>
						
						<div class="checkbox col-lg-10 col-lg-offset-2">
							<label><input type="checkbox" name="remember-me" id="remember-me"> Remember me</label>
						</div>

				</fieldset>
			</form>
			      </div>
			      <div class="modal-footer">
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button type="submit" class="btn btn-primary"><@spring.message "sign-in.login.button"/></button>
								<a class="btn btn-link" href="${contextroot}"><@spring.message "sign-in.cancel.link"/></a>
							</div>
						</div>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
	</div>
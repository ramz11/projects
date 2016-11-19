<#import "/bootstrap.ftl" as bootstrap/>
<#import "/spring.ftl" as spring/>
<#import "/template.ftl" as template/>
<@template.render>
	<div class="well">
		<form name="user" method="post">
			<fieldset>
				<legend>Create your personal account</legend>
				
				<@bootstrap.formInput path="user.username"
						label="Email"
						placeholder="Enter your email"
						attributes="required"/>
				
				<@bootstrap.formPasswordInput path="user.password"
						label="Password"
						placeholder="Choose a password"
						attributes="required"/>

				<@bootstrap.formPasswordInput path="user.passwordMatch"
						label="Confirm password"
						placeholder="Re-enter your password"
						attributes="required"/>

				<p>
					By clicking on "Sign up for Therapie" below, you are agreeing to the <a href="#">Terms of Service</a>
					and the <a href="#">Privacy Policy</a>.
				</p>
				
				<hr/>
				
				<button class="btn btn-lg btn-success btn-block" type="submit">Sign up for Therapie</button>
			</fieldset>
		</form>
	</div>
</@template.render>
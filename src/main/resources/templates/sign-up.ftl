<#import "/bootstrap.ftl" as bootstrap/>
<#import "/spring.ftl" as spring/>
<#import "/template.ftl" as template/>
<@template.render>
	<div class="well">
		<form name="user" method="post">
			<fieldset>
				<legend>Create your personal account</legend>
				
				<@bootstrap.formInput path="user.firstname"
						label="sign-up.firstname.label"
						placeholder="sign-up.firstname.placeholder"
						attributes="required"/>
				
				<@bootstrap.formInput path="user.lastname"
						label="sign-up.lastname.label"
						placeholder="sign-up.lastname.placeholder"
						attributes="required"/>

				<@bootstrap.formInput path="user.username"
						label="sign-up.email.label"
						placeholder="sign-up.email.placeholder"
						attributes="required"/>

				<@bootstrap.formPasswordInput path="user.password"
						label="sign-up.password.label"
						placeholder="sign-up.password.placeholder"
						attributes="required"/>

				<@bootstrap.formPasswordInput path="user.passwordMatch"
						label="sign-up.password-match.label"
						placeholder="sign-up.password-match.placeholder"
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
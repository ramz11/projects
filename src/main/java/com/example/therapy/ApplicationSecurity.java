package com.example.therapy;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.example.therapy.repository.UserRepository;
import com.example.therapy.security.JpaUserDetailsService;

@Configuration
public class ApplicationSecurity extends WebSecurityConfigurerAdapter {

	@Autowired
	private PasswordEncoder passwordEncoder;


	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
			.userDetailsService(userDetailsService(null))
			.passwordEncoder(passwordEncoder);
	}


	@Override
	public void configure(WebSecurity web) throws Exception {
		web
			.ignoring()
				.antMatchers("/assets/**")
				.antMatchers("/h2-console/**");
	}


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()

			.headers()
				.cacheControl().disable()
				.frameOptions().disable()
				.and()

			// splash page should be unprotected
			.authorizeRequests()
				.antMatchers("/**").permitAll()
				.antMatchers("/admin-login").permitAll()
				.antMatchers("/logout").permitAll()
				.and()

			// resources requiring specific roles
			.authorizeRequests()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.and()

			// resources requiring authentication but no specific roles
			.authorizeRequests()
				.anyRequest().authenticated()
				.and()

			.formLogin()
				.loginPage("/admin-login")
				.failureUrl("/admin-login?status=autherror")
				.permitAll()
				.and()

			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/admin-login?status=signedout")
				.and()

			.rememberMe()
				.tokenRepository(persistentTokenRepository(null))
				.tokenValiditySeconds(1209600) // two weeks
				.and()

			.exceptionHandling()
				.accessDeniedPage("/access-denied");
	}


	@Bean
	public UserDetailsService userDetailsService(UserRepository userRepository) {
		return new JpaUserDetailsService(userRepository);
	}


	@Bean
	public PersistentTokenRepository persistentTokenRepository(DataSource dataSource) {
		final JdbcTokenRepositoryImpl persistentTokenRepository = new JdbcTokenRepositoryImpl();
		persistentTokenRepository.setDataSource(dataSource);
		return persistentTokenRepository;
	}

}

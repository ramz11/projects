package com.example.therapy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.example.therapy.event.SignupCompleteEvent;
import com.example.therapy.event.SignupCompleteListener;
import com.example.therapy.interceptor.SecurityPrincipalInterceptor;
import com.example.therapy.repository.UserRepository;
import com.example.therapy.service.DefaultUserService;
import com.example.therapy.service.UserService;

@EnableWebSecurity
@SpringBootApplication
@EntityScan({ "com.example.therapy.model" })
public class TherapyApplication extends WebMvcConfigurerAdapter {

	public static void main(String[] args) {
		SpringApplication.run(TherapyApplication.class, args);
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(securityPrincipalInterceptor());
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public HandlerInterceptor securityPrincipalInterceptor() {
		return new SecurityPrincipalInterceptor();
	}

	@Bean
	public UserService userService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
		return new DefaultUserService(userRepository, passwordEncoder);
	}

	@Bean
	public ApplicationListener<SignupCompleteEvent> signupCompleteListener() {
		return new SignupCompleteListener();
	}

}
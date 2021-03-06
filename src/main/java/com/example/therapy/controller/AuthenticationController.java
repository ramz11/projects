package com.example.therapy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.therapy.event.SignupCompleteEvent;
import com.example.therapy.model.User;
import com.example.therapy.service.UserService;

@Controller
public class AuthenticationController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AuthenticationController.class);

	@Autowired
	protected ApplicationEventPublisher applicationEventPublisher;

	@Autowired
	protected AuthenticationManager authenticationManager;

	@Autowired
	private UserService userService;

	@GetMapping("/sign-up")
	public String signUpForm(@ModelAttribute User user) {
		return "/sign-up";
	}

	@PostMapping("/sign-up")
	public String signUp(@Valid User user, BindingResult bindingResult, HttpServletRequest request) {
		LOGGER.debug("Processing sign-up form submission");

		if (bindingResult.hasErrors()) {
			LOGGER.debug("Submitted sign-up form has {} errors: {}", bindingResult.getErrorCount(), bindingResult.getAllErrors());
			return "/sign-up";
		}

		if (userService.exists(user.getUsername()) == true) {
			LOGGER.debug("User [{}] already exists", user.getUsername());
			bindingResult.rejectValue("username", "signup.username.alreadyregistered", "A user with this email already exists.");
			return "/sign-up";
		}

		LOGGER.debug("Submitted sign-up form passed validation checks, saving user...");
		final User createdUser = userService.create(user);

		if (createdUser == null) {
			LOGGER.debug("User [{}] already exists", user.getUsername());
			bindingResult.reject("signup.error", "Error creating user; please try again.");
			return "/sign-up";
		}

		LOGGER.debug("Sending signup complete event");
		applicationEventPublisher.publishEvent(new SignupCompleteEvent(createdUser));

		LOGGER.debug("User successfully created, performing post-creation sign-in...");
		authenticateUser(user, request);

		LOGGER.debug("Redirecting to /");
		return "redirect:/";
	}


	@GetMapping("/admin-login")
	public String signIn(Model model, String status) {
		if ("autherror".equals(status) == true) { model.addAttribute("alertError", "Error: invalid username or password."); }
		if ("signedout".equals(status) == true) { model.addAttribute("alertSuccess", "You have been successfully signed out."); }
		return "/admin-login";
	}

	protected void authenticateUser(User user, HttpServletRequest request) {
		final UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword());
		authenticationToken.setDetails(new WebAuthenticationDetails(request));
		final Authentication authentication = authenticationManager.authenticate(authenticationToken);
		SecurityContextHolder.getContext().setAuthentication(authentication);
	}

}
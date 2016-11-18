package com.example.therapy.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.therapy.model.User;
import com.example.therapy.service.UserService;

@Controller
public class AuthenticationController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AuthenticationController.class);

	@Autowired
	private UserService userService;

	@GetMapping("/sign-up")
	public String signUpForm(@ModelAttribute User user) {
		return "/sign-up";
	}

	@PostMapping("/sign-up")
	public String signUp(@Valid User user, BindingResult bindingResult) {
		LOGGER.debug("Processing sign-up form submission");

		if (bindingResult.hasErrors()) {
			LOGGER.debug("Submitted sign-up form has {} errors: {}", bindingResult.getErrorCount(), bindingResult.getAllErrors());
			return "/sign-up";
		}

		if (userService.exists(user.getUsername()) == true) {
			LOGGER.debug("User [{}] already exists", user.getUsername());
			bindingResult.rejectValue("username", "signup.username.alreadyregistered");
			return "/sign-up";
		}

		LOGGER.debug("Submitted sign-up form passed validation checks, saving user...");
		userService.create(user.getUsername(), user.getPassword());

		LOGGER.debug("Redirecting user to /sign-up");
		return "redirect:/sign-up";
	}


	@GetMapping("/admin-login")
	public String signIn(Model model, String status) {
		if ("autherror".equals(status) == true) { model.addAttribute("alertError", "Error: invalid username or password."); }
		if ("signedout".equals(status) == true) { model.addAttribute("alertSuccess", "You have been successfully signed out."); }
		return "/admin-login";
	}

}
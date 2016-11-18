package com.example.therapy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
		@GetMapping("/admin-login")
		public String welcome() {
			return "/admin-login";
		}

}

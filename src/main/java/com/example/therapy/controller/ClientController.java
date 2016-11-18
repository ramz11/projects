package com.example.therapy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.therapy.model.Client;
import com.example.therapy.repository.ClientRepository;

@Controller
public class ClientController {
	
	@Autowired
	protected ClientRepository clientRepository;
	
	@GetMapping("/create-client")
	public String createClientForm(Model model) {
		Client client = clientRepository.findOne(1L);
		if (client == null) client = new Client();
		model.addAttribute(client);
		return "/add-client";
	}
	
	@PostMapping("/create-client")
	public String createClientHandler(@ModelAttribute Client client, RedirectAttributes redirectAttributes) {
		
		try {
			clientRepository.save(client);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("alertError", "Appointment booking failed. Please try again");
		}
		
		redirectAttributes.addFlashAttribute("alertSuccess", "saved successfully");
		
		return "redirect:/create-client";
	}

}
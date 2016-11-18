package com.example.therapy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.therapy.model.Appointment;
import com.example.therapy.repository.AppointmentRepository;

@Controller
public class AppointmentController {
	
	@Autowired
	protected AppointmentRepository appointmenRepository;
	
	@GetMapping("/create-appointment")
	public String createAppointmentForm(Model model) {
		Appointment appointment = appointmenRepository.findOne(1L);
		if (appointment == null) appointment = new Appointment();
		model.addAttribute(appointment);
		return "/add-client";
	}
	
	@PostMapping("/create-appointment")
	public String createAppointmentHandler(@ModelAttribute Appointment appointment, RedirectAttributes redirectAttributes) {
		
		try {
			appointmenRepository.save(appointment);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("alertError", "Appointment booking failed. Please try again");
		}
		
		redirectAttributes.addFlashAttribute("alertSuccess", "saved successfully");
		
		return "redirect:/create-appointment";
	}

}
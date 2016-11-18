package com.example.therapy.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.therapy.model.Appointment;

public interface AppointmentRepository extends CrudRepository<Appointment, Long>{
	
	/* intentionally left blank */
	
}
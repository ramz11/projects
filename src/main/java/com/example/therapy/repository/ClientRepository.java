package com.example.therapy.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.therapy.model.Client;

public interface ClientRepository extends CrudRepository<Client, Long> {

	/* intentionally left blank */
	
}

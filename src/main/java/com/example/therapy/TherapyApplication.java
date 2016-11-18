package com.example.therapy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan({ "com.example.therapy.model" })
@SpringBootApplication
public class TherapyApplication {

	public static void main(String[] args) {
		SpringApplication.run(TherapyApplication.class, args);
	}
}
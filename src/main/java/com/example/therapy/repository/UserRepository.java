package com.example.therapy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.therapy.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	/* intentionally left blank */

}

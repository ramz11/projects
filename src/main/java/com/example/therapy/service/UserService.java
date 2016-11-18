package com.example.therapy.service;

public interface UserService {

	void create(String username, String password);

	boolean exists(String username);

}

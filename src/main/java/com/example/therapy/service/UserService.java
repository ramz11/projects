package com.example.therapy.service;

import com.example.therapy.model.User;

public interface UserService {

	void create(User user);

	boolean exists(String username);

}

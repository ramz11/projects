package com.example.therapy.service;

import com.example.therapy.model.User;

public interface UserService {

	User create(User user);

	boolean exists(String username);

}

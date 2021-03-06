package com.example.therapy.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Example;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.therapy.model.User;
import com.example.therapy.repository.UserRepository;

public class DefaultUserService implements UserService {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultUserService.class);

	protected final PasswordEncoder passwordEncoder;

	protected final UserRepository userRepository;

	public DefaultUserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public User create(User user) {
		final User newUser = new User();
		newUser.setFirstname(user.getFirstname());
		newUser.setLastname(user.getLastname());
		newUser.setUsername(user.getUsername());
		newUser.setPassword(passwordEncoder.encode(user.getPassword()));

		LOGGER.debug("Saving user [{}] to data store", user.getUsername());
		final User savedUser = userRepository.save(newUser);
		LOGGER.debug("Successfully saved user; username=[{}], id=[{}]", user.getUsername(), savedUser.getId());

		return user;
	}

	@Override
	public boolean exists(String username) {
		final User user = new User();
		user.setUsername(username);

		LOGGER.debug("Checking if user [{}] exists in data store", username);
		final boolean userExists = userRepository.exists(Example.of(user));
		LOGGER.debug("User[username={}].exists = {}", username, userExists);

		return userExists;
	}

}

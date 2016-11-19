package com.example.therapy.event;

import org.springframework.context.ApplicationEvent;

import com.example.therapy.model.User;

@SuppressWarnings("serial")
public class SignupCompleteEvent extends ApplicationEvent {

	protected final User user;

	public SignupCompleteEvent(User user) {
		super(user);
		this.user = user;
	}

	public User getUser() {
		return user;
	}

}

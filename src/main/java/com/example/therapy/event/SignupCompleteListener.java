package com.example.therapy.event;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.example.therapy.model.User;

public class SignupCompleteListener implements ApplicationListener<SignupCompleteEvent> {

	@Autowired
	protected JavaMailSender javaMailSender;

	protected boolean sendVerificationEmail = false;

	@Override
	public void onApplicationEvent(SignupCompleteEvent event) {
		if (sendVerificationEmail == false) { return; }

		final User user = event.getUser();
		final String token = UUID.randomUUID().toString();

		// TODO store token to database for later

		final SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(user.getUsername());
		simpleMailMessage.setFrom("example@example.com");
		simpleMailMessage.setSubject("Therapie - confirm registration");
		simpleMailMessage.setText("Successfully registered.. here's your confirmation token: " + token);
		javaMailSender.send(simpleMailMessage);
	}


	public void setSendVerificationEmail(boolean sendVerificationEmail) {
		this.sendVerificationEmail = sendVerificationEmail;
	}

}
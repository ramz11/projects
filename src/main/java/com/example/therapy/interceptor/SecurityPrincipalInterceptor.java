package com.example.therapy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SecurityPrincipalInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		final SecurityContext securityContext = SecurityContextHolder.getContext();
		if (securityContext != null && securityContext.getAuthentication() != null) {
			final Object principal = securityContext.getAuthentication().getPrincipal();
			if (principal instanceof User) { modelAndView.addObject("principal", principal); }
		}
	}

}

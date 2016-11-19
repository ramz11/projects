package com.example.therapy.model;

import java.util.Collections;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;

@Entity
@SuppressWarnings("serial")
public class Role extends AbstractEntity {

	@Column(unique = true, nullable = false)
	protected String role;

	@ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY)
	protected Set<User> users = Collections.emptySet();

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUser(Set<User> users) {
		this.users = users;
	}

}

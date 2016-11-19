package com.example.therapy.model;

import java.util.Collections;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

@Entity
@SuppressWarnings("serial")
public class Client extends AbstractEntity {

	@Length(min = 1, max = 256)
	protected String firstname;

	@Length(min = 1, max = 256)
	protected String lastname;

	@Email
	protected String email;

	@Pattern(regexp="(^$|[0-9]{10})")
	protected String phonenumber;

	@OneToMany
	protected Set<Note> notes = Collections.emptySet();

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public Set<Note> getNotes() {
		return notes;
	}

	public void setNotes(Set<Note> notes) {
		this.notes = notes;
	}

}
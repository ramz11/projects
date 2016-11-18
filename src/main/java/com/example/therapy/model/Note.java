package com.example.therapy.model;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.Length;

@Entity
public class Note extends AbstractEntity{

	@Length(min = 1, max = 256)
	protected String note;

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
}
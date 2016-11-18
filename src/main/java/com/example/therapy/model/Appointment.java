package com.example.therapy.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;

@Entity
@SuppressWarnings("serial")
public class Appointment extends AbstractEntity {

	protected Calendar startDateTime;

	@Min(value = 0)
	protected Integer durationMins;

	@ManyToOne
	protected Client client;

	@OneToMany
	protected List<Note> notes;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Calendar getStartDateTime() {
		return startDateTime;
	}

	public void setStartDateTime(Calendar startDateTime) {
		this.startDateTime = startDateTime;
	}

	public Integer getDurationMins() {
		return durationMins;
	}

	public void setDurationMins(Integer durationMins) {
		this.durationMins = durationMins;
	}

	public List<Note> getNotes() {
		return notes;
	}

	public void setNotes(List<Note> notes) {
		this.notes = notes;
	}

}
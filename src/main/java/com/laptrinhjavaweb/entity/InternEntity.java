package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "intern")
public class InternEntity extends BaseEntity {

	@Column(name = "specialized")
	private String specialized;

	@Column(name = "practicetime")
	private String practicetime;

	@Column(name = "dateback")
	private String dateback;

	@Column(name = "startday")
	private String startday;

	public String getSpecialized() {
		return specialized;
	}

	public void setSpecialized(String specialized) {
		this.specialized = specialized;
	}

	public String getPracticetime() {
		return practicetime;
	}

	public void setPracticetime(String practicetime) {
		this.practicetime = practicetime;
	}

	public String getDateback() {
		return dateback;
	}

	public void setDateback(String dateback) {
		this.dateback = dateback;
	}

	public String getStartday() {
		return startday;
	}

	public void setStartday(String startday) {
		this.startday = startday;
	}

}

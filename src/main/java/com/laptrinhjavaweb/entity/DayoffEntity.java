package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dayoff")
public class DayoffEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "birthday")
	private String birthday;

	@Column(name = "gender")
	private String gender;

	@Column(name = "phone")
	private String phone;

	@Column(name = "passport")
	private String passport;

	@Column(name = "email")
	private String email;

	@Column(name = "reason")
	public String reason;

	@Column(name = "numberdayoff")
	private int numberdayoff;

	@Column(name = "location")
	private String location;

	@Column(name = "furlough")
	private String furlough;

	@Column(name = "dateback")
	private String dateback;

	@Column(name = "startday")
	private String startday;

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getNumberdayoff() {
		return numberdayoff;
	}

	public void setNumberdayoff(int numberdayoff) {
		this.numberdayoff = numberdayoff;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getFurlough() {
		return furlough;
	}

	public void setFurlough(String furlough) {
		this.furlough = furlough;
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

	public Long getId() {
		return id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}

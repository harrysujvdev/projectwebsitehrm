package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "employee")
public class EmployeeEntity extends BaseEntity {

	
	@Column(name = "experience")
	private String experience;

	@Column(name = "overtime")
	private int overtime;

	@Column(name = "subsidize")
	private Long subsidize;

	@Column(name = "workingdays")
	private int workingdays;

	@Column(name = "numberdayoff")
	private int numberdayoff;

	@Column(name = "salaryofficial")
	private String salaryofficial;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "payrate_id")
	private PayrateEntity payrates;

	public PayrateEntity getPayrates() {
		return payrates;
	}

	public void setPayrates(PayrateEntity payrates) {
		this.payrates = payrates;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public int getOvertime() {
		return overtime;
	}

	public void setOvertime(int overtime) {
		this.overtime = overtime;
	}

	public Long getSubsidize() {
		return subsidize;
	}

	public void setSubsidize(Long subsidize) {
		this.subsidize = subsidize;
	}

	public int getWorkingdays() {
		return workingdays;
	}

	public void setWorkingdays(int workingdays) {
		this.workingdays = workingdays;
	}

	public int getNumberdayoff() {
		return numberdayoff;
	}

	public void setNumberdayoff(int numberdayoff) {
		this.numberdayoff = numberdayoff;
	}

	public String getSalaryofficial() {
		return salaryofficial;
	}

	public void setSalaryofficial(String salaryofficial) {
		this.salaryofficial = salaryofficial;
	}

}

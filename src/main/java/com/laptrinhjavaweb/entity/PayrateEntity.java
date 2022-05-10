package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "payrates")
public class PayrateEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "namepay")
	private String namepay;

	@Column(name = "salarybasic")
	private Long salarybasic;

	@OneToMany(mappedBy = "payrates")
	private List<EmployeeEntity> employee = new ArrayList<>();

	public List<EmployeeEntity> getEmployee() {
		return employee;
	}

	public void setEmployee(List<EmployeeEntity> employee) {
		this.employee = employee;
	}

	public String getNamepay() {
		return namepay;
	}

	public void setNamepay(String namepay) {
		this.namepay = namepay;
	}

	public Long getSalarybasic() {
		return salarybasic;
	}

	public void setSalarybasic(Long salarybasic) {
		this.salarybasic = salarybasic;
	}

	public Long getId() {
		return id;
	}

}

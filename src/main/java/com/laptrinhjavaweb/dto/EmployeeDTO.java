package com.laptrinhjavaweb.dto;

public class EmployeeDTO extends AbstractDTO<EmployeeDTO> {

	private String experience;
	private Long payrate_id;

	public Long getPayrate_id() {
		return payrate_id;
	}

	public void setPayrate_id(Long payrate_id) {
		this.payrate_id = payrate_id;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

}

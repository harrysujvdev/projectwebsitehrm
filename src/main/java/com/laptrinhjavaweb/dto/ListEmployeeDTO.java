package com.laptrinhjavaweb.dto;

import com.laptrinhjavaweb.entity.PayrateEntity;

public class ListEmployeeDTO extends AbstractDTO<ListEmployeeDTO> {
	private String experience;
	private Long payrate_id;
	private PayrateEntity payrates;

	public PayrateEntity getPayrates() {
		return payrates;
	}

	public void setPayrates(PayrateEntity payrates) {
		this.payrates = payrates;
	}

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

package com.laptrinhjavaweb.dto;

public class DayoffDTO extends AbstractDTO<DayoffDTO> {
	public String reason;
	private int numberdayoff;
	private String furlough;

	public String getFurlough() {
		return furlough;
	}

	public void setFurlough(String furlough) {
		this.furlough = furlough;
	}

	public int getNumberdayoff() {
		return numberdayoff;
	}

	public void setNumberdayoff(int numberdayoff) {
		this.numberdayoff = numberdayoff;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

}

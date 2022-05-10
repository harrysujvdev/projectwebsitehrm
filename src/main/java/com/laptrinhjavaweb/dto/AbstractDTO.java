package com.laptrinhjavaweb.dto;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class AbstractDTO<T> {
	private Long id;
	private String fullname;
	private String birthday;
	private String gender;
	private String address;
	private String phone;
	private String email;
	private String specialized;
	private Timestamp createddate;
	private String createdby;
	private Timestamp modifieddate;
	private String modifiedby;
	private String location;
	private String degree;
	private String religion;
	private String passport;
	private String ethnicity;
	private String type;
	private String nationality;
	private String namepay;
	private String dateback;
	private String startday;
	private Long salarybasic;
	private int overtime;
	private Long subsidize;
	private int workingdays;
	private int numberdayoff;
	private String salaryofficial;
	private Integer page;
	private Integer totalPage;
	private Integer totalItem;
	private long[] ids;
	private List<T> listResult = new ArrayList<>();

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

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getTotalItem() {
		return totalItem;
	}

	public void setTotalItem(Integer totalItem) {
		this.totalItem = totalItem;
	}

	public int getNumberdayoff() {
		return numberdayoff;
	}

	public void setNumberdayoff(int numberdayoff) {
		this.numberdayoff = numberdayoff;
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

	public String getSalaryofficial() {
		return salaryofficial;
	}

	public void setSalaryofficial(String salaryofficial) {
		this.salaryofficial = salaryofficial;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Long getSalarybasic() {
		return salarybasic;
	}

	public void setSalarybasic(Long salarybasic) {
		this.salarybasic = salarybasic;
	}

	public String getNamepay() {
		return namepay;
	}

	public void setNamepay(String namepay) {
		this.namepay = namepay;
	}

	public String getEthnicity() {
		return ethnicity;
	}

	public void setEthnicity(String ethnicity) {
		this.ethnicity = ethnicity;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<T> getListResult() {
		return listResult;
	}

	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}

	public long[] getIds() {
		return ids;
	}

	public void setIds(long[] ids) {
		this.ids = ids;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Timestamp getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(Timestamp modifieddate) {
		this.modifieddate = modifieddate;
	}

	public Timestamp getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Timestamp createddate) {
		this.createddate = createddate;
	}

	public String getCreatedby() {
		return createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	public String getModifiedby() {
		return modifiedby;
	}

	public void setModifiedby(String modifiedby) {
		this.modifiedby = modifiedby;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSpecialized() {
		return specialized;
	}

	public void setSpecialized(String specialized) {
		this.specialized = specialized;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

}

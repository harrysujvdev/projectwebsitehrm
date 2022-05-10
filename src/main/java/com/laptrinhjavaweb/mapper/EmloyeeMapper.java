package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.dto.EmployeeDTO;

public class EmloyeeMapper implements RowMapper<EmployeeDTO> {

	@Override
	public EmployeeDTO mapRow(ResultSet resultSet) {
		try {
			EmployeeDTO emloyee = new EmployeeDTO();
			emloyee.setId(resultSet.getLong("id"));
			emloyee.setFullname(resultSet.getString("fullname"));
			emloyee.setBirthday(resultSet.getString("birthday"));
			emloyee.setGender(resultSet.getString("gender"));
			emloyee.setPayrate_id(resultSet.getLong("payrate_id"));
			emloyee.setAddress(resultSet.getString("address"));
			emloyee.setPhone(resultSet.getString("phone"));
			emloyee.setEmail(resultSet.getString("email"));
			emloyee.setEthnicity(resultSet.getString("ethnicity"));
			emloyee.setNationality(resultSet.getString("nationality"));
			emloyee.setReligion(resultSet.getString("religion"));
			emloyee.setDegree(resultSet.getString("degree"));
			emloyee.setLocation(resultSet.getString("location"));
			emloyee.setExperience(resultSet.getString("experience"));
			emloyee.setPassport(resultSet.getString("passport"));
			emloyee.setOvertime(resultSet.getInt("overtime"));
			emloyee.setSubsidize(resultSet.getLong("subsidize"));
			emloyee.setWorkingdays(resultSet.getInt("workingdays"));
			emloyee.setNumberdayoff(resultSet.getInt("numberdayoff"));
			emloyee.setSalaryofficial(resultSet.getString("salaryofficial"));
			emloyee.setCreateddate(resultSet.getTimestamp("createddate"));
			emloyee.setCreatedby(resultSet.getString("createdby"));
			try {
				emloyee.setNamepay(resultSet.getString("namepay"));
				emloyee.setSalarybasic(resultSet.getLong("salarybasic"));
			} catch (Exception e) {
			}
			return emloyee;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}

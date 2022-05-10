package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.dto.DayoffDTO;

public class DayoffMapper implements RowMapper<DayoffDTO> {

	@Override
	public DayoffDTO mapRow(ResultSet resultSet) {
		try {
			DayoffDTO dayoffModel = new DayoffDTO();
			dayoffModel.setId(resultSet.getLong("id"));
			dayoffModel.setFullname(resultSet.getString("fullname"));
			dayoffModel.setBirthday(resultSet.getString("birthday"));
			dayoffModel.setGender(resultSet.getString("gender"));
			dayoffModel.setStartday(resultSet.getString("startday"));
			dayoffModel.setPhone(resultSet.getString("phone"));
			dayoffModel.setEmail(resultSet.getString("email"));
			dayoffModel.setReason(resultSet.getString("reason"));
			dayoffModel.setLocation(resultSet.getString("location"));
			dayoffModel.setNumberdayoff(resultSet.getInt("numberdayoff"));
			dayoffModel.setPassport(resultSet.getString("passport"));
			dayoffModel.setFurlough(resultSet.getString("furlough"));
			dayoffModel.setDateback(resultSet.getString("dateback"));
			return dayoffModel;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}

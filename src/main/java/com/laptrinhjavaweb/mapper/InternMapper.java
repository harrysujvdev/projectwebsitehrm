package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.dto.InternDTO;

public class InternMapper implements RowMapper<InternDTO> {

	@Override
	public InternDTO mapRow(ResultSet resultSet) {
		try {
			InternDTO intern = new InternDTO();
			intern.setId(resultSet.getLong("id"));
			intern.setFullname(resultSet.getString("fullname"));
			intern.setBirthday(resultSet.getString("birthday"));
			intern.setGender(resultSet.getString("gender"));
			intern.setAddress(resultSet.getString("address"));
			intern.setPhone(resultSet.getString("phone"));
			intern.setEmail(resultSet.getString("email"));
			intern.setSpecialized(resultSet.getString("specialized"));
			intern.setDegree(resultSet.getString("degree"));
			intern.setPracticetime(resultSet.getString("practicetime"));
			intern.setCreateddate(resultSet.getTimestamp("createddate"));
			intern.setCreatedby(resultSet.getString("createdby"));
			return intern;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}

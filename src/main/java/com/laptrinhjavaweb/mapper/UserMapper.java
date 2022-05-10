package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.dto.UserDTO;

public class UserMapper implements RowMapper<UserDTO> {

	@Override
	public UserDTO mapRow(ResultSet resultSet) {
		try {
			UserDTO user = new UserDTO();
			user.setId(resultSet.getLong("id"));
			user.setUsername(resultSet.getString("username"));
			user.setPassword(resultSet.getString("password"));
			user.setFullname(resultSet.getString("fullname"));
			user.setEmail(resultSet.getString("email"));
			user.setPhone(resultSet.getString("phone"));
			user.setSocialnetwork(resultSet.getString("socialnetwork"));
			user.setCreateddate(resultSet.getTimestamp("createddate"));
			user.setPassport(resultSet.getString("passport"));
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}

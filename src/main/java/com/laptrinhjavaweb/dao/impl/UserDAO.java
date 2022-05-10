package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.dao.IUserDAO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.mapper.UserMapper;

@Repository
public class UserDAO extends AbstractDAO<UserDTO> implements IUserDAO {

	@Override
	public UserDTO findUsername(String username) {
		String sql = "SELECT * FROM user WHERE username = ?";
		List<UserDTO> user = query(sql.toString(), new UserMapper(), username);
		return user.isEmpty() ? null : user.get(0);
	}

	@Override
	public void upPassword(UserDTO userDTO) {
		String sql = "UPDATE user SET password = ? WHERE passport = ?";
		update(sql, userDTO.getPassword(), userDTO.getPassport());
	}

	@Override
	public void updateStatus(UserDTO userDTO) {
		String sql = "UPDATE user SET status = ? WHERE id = ?";
		update(sql, userDTO.getStatus(), userDTO.getId());
	}

	

}

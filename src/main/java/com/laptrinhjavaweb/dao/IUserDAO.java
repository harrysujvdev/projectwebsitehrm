package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.dto.UserDTO;

public interface IUserDAO {

	UserDTO findUsername(String username);

	void upPassword(UserDTO userDTO);
	
	
	void updateStatus(UserDTO userDTO);
}

package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.UserDTO;

public interface IUserService {

	List<UserDTO> finAll();

	UserDTO findByUsername(String username);

	void upPassword(UserDTO userModel);
	
	UserDTO save(UserDTO dto);
	
	void updateStatus(UserDTO userDTO);
}

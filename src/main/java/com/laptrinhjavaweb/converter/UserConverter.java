package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;

@Component
public class UserConverter {
	public UserEntity toEntity(UserEntity entity, UserDTO dto) {
		entity.setUserName(dto.getUsername());
		entity.setPassport(dto.getPassport());
		entity.setPassword(dto.getPassword());
		return entity;

	}
}

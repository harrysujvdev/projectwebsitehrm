package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dao.IUserDAO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.RoleRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	UserConverter userConverter;

	@Autowired
	private IUserDAO userDAO;

	@Autowired
	private RoleRepository roleRepository;

	@Override
	public List<UserDTO> finAll() {
		List<UserDTO> list = new ArrayList<>();
		List<UserEntity> entities = userRepository.findAll();
		for (UserEntity item : entities) {
			UserDTO dto = new ModelMapper().map(item, UserDTO.class);
			list.add(dto);
		}
		return list;
	}

	@Override
	public UserDTO findByUsername(String username) {
		UserEntity entity = userRepository.findByUserName(username);
		if (entity != null) {
			UserDTO dto = new ModelMapper().map(entity, UserDTO.class);
			return dto;
		}
		return null;

	}

	@Override
	public void upPassword(UserDTO userModel) {
		userDAO.upPassword(userModel);

	}

	@Override
	public UserDTO save(UserDTO dto) {
		UserEntity entity = new ModelMapper().map(dto, UserEntity.class);
		RoleEntity roleEntity = roleRepository.findOne(dto.getRoleid());
		List<RoleEntity> lisrole = new ArrayList<>();
		lisrole.add(roleEntity);
		entity.setRoles(lisrole);
		return new ModelMapper().map(userRepository.save(entity), UserDTO.class);
	}

	@Override
	public void updateStatus(UserDTO userDTO) {
		userDAO.updateStatus(userDTO);
	}
}

package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.PayratesDTO;
import com.laptrinhjavaweb.entity.PayrateEntity;
import com.laptrinhjavaweb.repository.PayrateRepository;
import com.laptrinhjavaweb.service.IPayrateService;

@Service
public class PayrateService implements IPayrateService {

	@Autowired
	PayrateRepository payrateRepository;

	@Override
	public List<PayratesDTO> finAll() {
		List<PayratesDTO> list = new ArrayList<>();
		List<PayrateEntity> entities = payrateRepository.findAll();
		for (PayrateEntity item : entities) {
			PayratesDTO listdto = new ModelMapper().map(item, PayratesDTO.class);
			list.add(listdto);
		}
		return list;
	}

}

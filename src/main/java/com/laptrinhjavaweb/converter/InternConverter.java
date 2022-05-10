package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.InternDTO;
import com.laptrinhjavaweb.entity.InternEntity;

@Component
public class InternConverter {

	public InternEntity toEntity(InternEntity entity, InternDTO dto) {

		entity.setFullname(dto.getFullname());
		entity.setEmail(dto.getEmail());
		entity.setPhone(dto.getPhone());
		entity.setPassport(dto.getPassport());
		entity.setAddress(dto.getAddress());
		entity.setBirthday(dto.getBirthday());
		entity.setDegree(dto.getDegree());
		entity.setGender(dto.getGender());
		entity.setPracticetime(dto.getPracticetime());
		entity.setSpecialized(dto.getSpecialized());
		entity.setStartday(dto.getStartday());
		entity.setDateback(dto.getDateback());
		entity.setNationality(dto.getNationality());
		return entity;
	}
}

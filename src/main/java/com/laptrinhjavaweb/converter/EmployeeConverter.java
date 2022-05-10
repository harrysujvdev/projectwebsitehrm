package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.entity.EmployeeEntity;

@Component
public class EmployeeConverter {
	public EmployeeEntity toEntity(EmployeeEntity entity, EmployeeDTO dto) {

		entity.setFullname(dto.getFullname());
		entity.setBirthday(dto.getBirthday());
		entity.setGender(dto.getGender());
		entity.setAddress(dto.getAddress());
		entity.setPhone(dto.getPhone());
		entity.setEmail(dto.getEmail());
		entity.setEthnicity(dto.getEthnicity());
		entity.setNationality(dto.getNationality());
		entity.setReligion(dto.getReligion());
		entity.setDegree(dto.getDegree());
		entity.setLocation(dto.getLocation());
		entity.setExperience(dto.getExperience());
		entity.setPassport(dto.getPassport());
		entity.setOvertime(dto.getOvertime());
		entity.setSubsidize(dto.getSubsidize());
		entity.setWorkingdays(dto.getWorkingdays());
		entity.setNumberdayoff(dto.getNumberdayoff());
		entity.setSalaryofficial(dto.getSalaryofficial());
		return entity;
	}

}

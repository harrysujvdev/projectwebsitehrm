package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.dto.DayoffDTO;
import com.laptrinhjavaweb.entity.DayoffEntity;
import com.laptrinhjavaweb.repository.DayoffRepository;
import com.laptrinhjavaweb.service.IDayoffService;

@Service
public class DayoffService implements IDayoffService {

	@Autowired
	DayoffRepository dayoffRepository;

	@Override
	@Transactional
	public DayoffDTO save(DayoffDTO dto) {
		DayoffEntity entity = new ModelMapper().map(dto, DayoffEntity.class);
		return new ModelMapper().map(dayoffRepository.save(entity), DayoffDTO.class);
	}

	@Override
	public List<DayoffDTO> finAll(Pageable pageable) {
		List<DayoffDTO> list = new ArrayList<>();
		List<DayoffEntity> entities = dayoffRepository.findAll(pageable).getContent();
		for (DayoffEntity item : entities) {
			DayoffDTO dto = new ModelMapper().map(item, DayoffDTO.class);
			list.add(dto);
		}
		return list;
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			dayoffRepository.delete(id);
		}
	}
	@Override
	public int getTotalItem() {
		return (int) dayoffRepository.count();
	}
}

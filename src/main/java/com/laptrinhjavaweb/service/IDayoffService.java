package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.DayoffDTO;

public interface IDayoffService {

	DayoffDTO save(DayoffDTO dto);

	List<DayoffDTO> finAll(Pageable pageable);

	void delete(long[] ids);
	
	int getTotalItem();
}

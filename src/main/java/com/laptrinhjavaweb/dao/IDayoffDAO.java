package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.dto.DayoffDTO;

public interface IDayoffDAO {
	DayoffDTO findOne(Long id );
	List<DayoffDTO> finAlldayOff();
	void update(DayoffDTO dayoff);
	void delete(long id);
}

package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.dto.InternDTO;

public interface IInternDAO {
	List<InternDTO> finAllIntern();
	InternDTO findOne(Long id);
}

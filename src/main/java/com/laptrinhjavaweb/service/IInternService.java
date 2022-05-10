package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.InternDTO;

public interface IInternService {

	List<InternDTO> findAll(Pageable pageable);

	InternDTO save(InternDTO dto);

	InternDTO findById(long id);
	
	int getTotalItem();
	
	void delete(long[] ids);
	
	List<InternDTO> findByFullname(String fullname);
}

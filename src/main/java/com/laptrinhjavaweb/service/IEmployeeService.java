package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.dto.ListEmployeeDTO;

public interface IEmployeeService {
	List<ListEmployeeDTO> findAll(Pageable pageable);

	EmployeeDTO save(EmployeeDTO dto);

	EmployeeDTO findById(long id);

	void delete(long[] ids);

	int getTotalItem();

	void upday(EmployeeDTO dto);

	EmployeeDTO paySalary(EmployeeDTO dto);
	
	ListEmployeeDTO findOneIdPay(long id);
	
	String countSalary(EmployeeDTO model);
	
	List<ListEmployeeDTO> findByFullname(String fullname);
	
}

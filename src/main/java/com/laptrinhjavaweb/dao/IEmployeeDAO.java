package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.dto.EmployeeDTO;

public interface IEmployeeDAO {

	EmployeeDTO findOne(Long id);

	void upSalary(EmployeeDTO employee);

	void upday(EmployeeDTO employee);
	
}

package com.laptrinhjavaweb.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.service.IEmployeeService;

@RestController(value = "EmployeeAPI")
public class EmployeeAPI {
	
	@Autowired
	IEmployeeService employeeService;
	
	@PostMapping(value = "/api/employeeAPI")
	public EmployeeDTO createEmployee(@RequestBody EmployeeDTO employeeDTO) {
		return employeeService.save(employeeDTO);
	}
	
	@PutMapping(value = "/api/employeeAPI")
	public EmployeeDTO updateEmployee(@RequestBody EmployeeDTO employeeDTO) {
		return employeeService.save(employeeDTO);
	}
	
	@DeleteMapping(value = "/api/employeeAPI")
	public void deleteEmployee(@RequestBody long[] ids) {
		employeeService.delete(ids);
	}
}

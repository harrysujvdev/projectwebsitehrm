package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.dao.IEmployeeDAO;
import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.mapper.EmloyeeMapper;

@Repository
public class EmployeeDAO extends AbstractDAO<EmployeeDTO> implements IEmployeeDAO {

	@Override
	public EmployeeDTO findOne(Long id) {
		String sql = "SELECT * FROM employee WHERE id = ?";
		List<EmployeeDTO> employee = query(sql, new EmloyeeMapper(), id);
		return employee.isEmpty() ? null : employee.get(0);
	}

	@Override
	public void upSalary(EmployeeDTO employee) {
		String sql = "UPDATE employee SET overtime = ?, subsidize = ?, numberdayoff = ?, salaryofficial = ? WHERE id = ?";
		update(sql, employee.getOvertime(), employee.getSubsidize(), employee.getNumberdayoff(),
				employee.getSalaryofficial(), employee.getId());
	}

	@Override
	public void upday(EmployeeDTO employee) {
		String sql = "UPDATE employee SET workingdays = ?";
		update(sql, employee.getWorkingdays());
	}

}

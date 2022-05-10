package com.laptrinhjavaweb.service.impl;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.EmployeeConverter;
import com.laptrinhjavaweb.dao.IEmployeeDAO;
import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.dto.ListEmployeeDTO;
import com.laptrinhjavaweb.entity.EmployeeEntity;
import com.laptrinhjavaweb.repository.EmployeeRepository;
import com.laptrinhjavaweb.repository.PayrateRepository;
import com.laptrinhjavaweb.service.IEmployeeService;

@Service
@Transactional
public class EmployeeService implements IEmployeeService {

	@Autowired
	EmployeeRepository employeeRepository;

	@Autowired
	IEmployeeDAO employeeDAO;

	@Autowired
	EmployeeConverter employeeConverter;

	@Autowired
	PayrateRepository payrateRepository;

	@Override
	public List<ListEmployeeDTO> findAll(Pageable pageable) {
		List<ListEmployeeDTO> list = new ArrayList<>();
		List<EmployeeEntity> listEntity = employeeRepository.findAll(pageable).getContent();
		for (EmployeeEntity item : listEntity) {
			ListEmployeeDTO dto = new ModelMapper().map(item, ListEmployeeDTO.class);
			list.add(dto);
		}
		return list;
	}

	@Override
	public EmployeeDTO save(EmployeeDTO dto) {
		ModelMapper mapper = new ModelMapper();
		EmployeeEntity entity = new EmployeeEntity();
		if (dto.getId() != null) {
			EmployeeEntity oldEmployee = employeeRepository.findOne(dto.getId());
			oldEmployee.setPayrates(payrateRepository.findOne(dto.getPayrate_id()));
			entity = employeeConverter.toEntity(oldEmployee, dto);
		} else {
			entity = mapper.map(dto, EmployeeEntity.class);
			entity.setPayrates(payrateRepository.findOne(dto.getPayrate_id()));
		}
		return mapper.map(employeeRepository.save(entity), EmployeeDTO.class);
	}

	@Override
	public EmployeeDTO findById(long id) {
		return employeeDAO.findOne(id);
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			employeeRepository.delete(id);
		}
	}

	@Override
	public int getTotalItem() {
		return (int) employeeRepository.count();
	}

	@Override
	public void upday(EmployeeDTO dto) {
		employeeDAO.upday(dto);
	}

	@Override
	public EmployeeDTO paySalary(EmployeeDTO dto) {
		employeeDAO.upSalary(dto);
		return employeeDAO.findOne(dto.getId());
	}

	@Override
	public ListEmployeeDTO findOneIdPay(long id) {
		EmployeeEntity entity = employeeRepository.findOne(id);
		return new ModelMapper().map(entity, ListEmployeeDTO.class);
	}

	@Override
	public String countSalary(EmployeeDTO model) {
		long luong_cb = model.getSalarybasic();
		long phu_cap = model.getSubsidize();
		long tang_ca = model.getOvertime();
		long luong_TC = (luong_cb / model.getWorkingdays()) * tang_ca;
		long ngay_lam = model.getWorkingdays() - model.getNumberdayoff();
		long Luong_CT = (((luong_cb + phu_cap + luong_TC) / 26) * ngay_lam);
		Locale localeVN = new Locale("vi", "VN");
		NumberFormat vn = NumberFormat.getInstance(localeVN);
		String Luongct = vn.format(Luong_CT);
		return Luongct;
	}

	@Override
	public List<ListEmployeeDTO> findByFullname(String fullname) {
		List<ListEmployeeDTO> list = new ArrayList<>();
		List<EmployeeEntity> listEntity = employeeRepository.findByFullname(fullname);
		if (listEntity != null) {
			for (EmployeeEntity item : listEntity) {
				ListEmployeeDTO dto = new ModelMapper().map(item, ListEmployeeDTO.class);
				list.add(dto);
			}
			return list;
		}
		return null;
	}

}

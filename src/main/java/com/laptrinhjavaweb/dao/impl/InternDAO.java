package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import com.laptrinhjavaweb.dao.IInternDAO;
import com.laptrinhjavaweb.dto.InternDTO;
import com.laptrinhjavaweb.mapper.InternMapper;

public class InternDAO extends AbstractDAO<InternDTO> implements IInternDAO {


	@Override
	public InternDTO findOne(Long id) {
		String sql = "SELECT * FROM intern WHERE id = ?";
		List<InternDTO> interns = query(sql, new InternMapper(), id);
		return interns.isEmpty() ? null : interns.get(0);
	}


	@Override
	public List<InternDTO> finAllIntern() {
		String sql = "SELECT * FROM intern";
		return query(sql, new InternMapper());
	}

}

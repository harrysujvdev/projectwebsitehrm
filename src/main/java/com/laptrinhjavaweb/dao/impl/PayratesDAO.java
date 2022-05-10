package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import com.laptrinhjavaweb.dao.IPayratesDAO;
import com.laptrinhjavaweb.dto.PayratesDTO;
import com.laptrinhjavaweb.mapper.PayratesMapper;

public class PayratesDAO extends AbstractDAO<PayratesDTO> implements IPayratesDAO {

	@Override
	public List<PayratesDTO> findAllPayrate() {
		String sql = "SELECT * FROM payrates";
		return query(sql, new PayratesMapper());
	}


}

package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.dao.IDayoffDAO;
import com.laptrinhjavaweb.dto.DayoffDTO;
import com.laptrinhjavaweb.mapper.DayoffMapper;

@Repository
public class DayoffDAO extends AbstractDAO<DayoffDTO> implements IDayoffDAO {


	@Override
	public DayoffDTO findOne(Long id) {
		String sql = "SELECT * FROM dayoff WHERE id = ?";
		List<DayoffDTO> dayoff = query(sql, new DayoffMapper(), id);
		return dayoff.isEmpty() ? null : dayoff.get(0);
	}

	@Override
	public List<DayoffDTO> finAlldayOff() {
		String sql = "SELECT * FROM dayoff";
		return query(sql, new DayoffMapper());
	}

	@Override
	public void update(DayoffDTO dayoff) {
		String sql = "UPDATE dayoff SET numberdayoff = ? WHERE id = ?";
		update(sql, dayoff.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM dayoff WHERE id = ?";
		update(sql, id);		
	}

}

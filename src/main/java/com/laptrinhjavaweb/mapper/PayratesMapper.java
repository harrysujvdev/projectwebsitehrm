package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.laptrinhjavaweb.dto.PayratesDTO;

public class PayratesMapper implements RowMapper<PayratesDTO> {

	@Override
	public PayratesDTO mapRow(ResultSet resultSet) {
		try {
			PayratesDTO paymodel = new PayratesDTO();
			paymodel.setId(resultSet.getLong("id"));
			paymodel.setNamepay(resultSet.getString("namepay"));
			paymodel.setSalarybasic(resultSet.getLong("salarybasic"));
			return paymodel;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}

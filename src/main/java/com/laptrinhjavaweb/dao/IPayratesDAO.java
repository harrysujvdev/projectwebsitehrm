package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.dto.PayratesDTO;

public interface IPayratesDAO {
	List<PayratesDTO> findAllPayrate();
}

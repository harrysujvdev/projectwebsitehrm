package com.laptrinhjavaweb.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.InternDTO;
import com.laptrinhjavaweb.service.IInternService;

@RestController(value = "InternAPI")
public class InternAPI {

	@Autowired
	IInternService internService;

	@PostMapping(value = "/api/internAPI")
	public InternDTO createIntern(@RequestBody InternDTO internDTO) {
		return internService.save(internDTO);
	}

	@PutMapping(value = "/api/internAPI")
	public InternDTO updateIntern(@RequestBody InternDTO internDTO) {
		return internService.save(internDTO);
	}

	@DeleteMapping(value = "/api/internAPI")
	public void deleteIntern(@RequestBody long[] ids) {
		internService.delete(ids);
	}

}

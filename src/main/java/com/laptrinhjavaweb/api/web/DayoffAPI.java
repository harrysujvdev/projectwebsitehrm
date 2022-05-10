package com.laptrinhjavaweb.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.DayoffDTO;
import com.laptrinhjavaweb.service.IDayoffService;

@RestController(value = "DayoffAPI")
public class DayoffAPI {

	@Autowired
	IDayoffService dayoffService;

	@PostMapping(value = "/api/dayoffAPI")
	public DayoffDTO createDayoff(@RequestBody DayoffDTO dayoffDTO) {
		return dayoffService.save(dayoffDTO);
	}

	@DeleteMapping(value = "/api/dayoffAPI")
	public void deleteDayoff(@RequestBody long[] ids) {
		dayoffService.delete(ids);
	}

}

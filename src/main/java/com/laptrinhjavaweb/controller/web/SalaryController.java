package com.laptrinhjavaweb.controller.web;

import java.util.ResourceBundle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.dto.ListEmployeeDTO;
import com.laptrinhjavaweb.service.IEmployeeService;

@Controller(value = "SalaryCTL")
public class SalaryController {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	@Autowired
	private IEmployeeService employeeService;

	@GetMapping(value = "/bang-luong-nhan-vien/danh-sach")
	public String showList(ModelMap map ,@RequestParam(value = "page", required = false) int page,
			@RequestParam(value = "message", required = false) String message) {
		ListEmployeeDTO model = new ListEmployeeDTO();
		model.setPage(page);
		if (message != null) {
			map.addAttribute(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		Pageable pageable = new PageRequest(page - 1, 2);
		model.setListResult(employeeService.findAll(pageable));
		model.setTotalItem(employeeService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / 2));
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/danh-sach-thanh-toan-luong";
	}

	@GetMapping(value = "/bang-luong-nhan-vien/thanh-toan-luong")
	public String paysalaryPage(ModelMap map ,@RequestParam(value = "message", required = false) String message,
			@RequestParam(value = "id", required = false) Long id) {
		ListEmployeeDTO model = new ListEmployeeDTO();
		if (message != null) {
			map.addAttribute(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		model = employeeService.findOneIdPay(id);
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/thanh-toan-luong";
	}

	@PostMapping(value = "/updateDay")
	public String updatedayPage(@ModelAttribute("model") EmployeeDTO model) {
		if (model != null) {
			employeeService.upday(model);
			return "redirect:/bang-luong-nhan-vien/danh-sach?page=1&message=updateDaySuccsess";
		} else {
			return "redirect:/bang-luong-nhan-vien/danh-sach?page=1&message=updateDayError";
		}

	}

	@PostMapping(value = "/paySalary")
	public String paySalary(@ModelAttribute("model") EmployeeDTO model) {
		model.setSalaryofficial(employeeService.countSalary(model));
		model = employeeService.paySalary(model);
		if (model != null) {
			return "redirect:/bang-luong-nhan-vien/danh-sach?page=1&message=paySuccess";
		} else {
			return "redirect:/bang-luong-nhan-vien/danh-sach?page=1&message=payError";
		}
	}

}

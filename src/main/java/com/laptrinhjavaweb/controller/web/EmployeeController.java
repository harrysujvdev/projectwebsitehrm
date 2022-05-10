package com.laptrinhjavaweb.controller.web;

import java.util.ResourceBundle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.DayoffDTO;
import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.dto.ListEmployeeDTO;
import com.laptrinhjavaweb.service.IDayoffService;
import com.laptrinhjavaweb.service.IEmployeeService;
import com.laptrinhjavaweb.service.IPayrateService;

@Controller(value = "EmployeeCTL")
public class EmployeeController {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Autowired
	private IEmployeeService employeeService;

	@Autowired
	private IPayrateService payrateService;

	@Autowired
	private IDayoffService dayoffService;

	@GetMapping(value = "/nhan-vien-chinh-thuc/danh-sach")
	public String showList(ModelMap map, @RequestParam(value = "page", required = false) int page,
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
		return "web/danh-sach-nhan-vien-chinh-thuc";
	}

	@GetMapping(value = "/nhan-vien-chinh-thuc/chinh-sua")
	public String editPage(ModelMap map, @RequestParam(value = "message", required = false) String message,
			@RequestParam(value = "id", required = false) Long id) {
		EmployeeDTO model = new EmployeeDTO();
		if (message != null) {
			map.addAttribute(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		if (id != null) {
			model = employeeService.findById(id);
		}
		map.addAttribute("payrateids", payrateService.finAll());
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/chinh-sua-nhan-vien-chinh-thuc";
	}

	@GetMapping(value = "/quan-ly-nhan-vien/them-ngay-nghi")
	public ModelAndView leaveOfPage(@RequestParam(value = "message", required = false) String message) {
		ModelAndView mav = new ModelAndView("web/them-nhan-vien-nghi-phep");
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		return mav;
	}

	@GetMapping(value = "/quan-ly-nhan-vien/danh-sach-nhan-vien-nghi")
	public String dayOffPage(ModelMap map, @RequestParam(value = "page", required = false) int page,
			@RequestParam(value = "message", required = false) String message) {
		DayoffDTO model = new DayoffDTO();
		model.setPage(page);
		if (message != null) {
			map.addAttribute(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		Pageable pageable = new PageRequest(page - 1, 2);
		model.setListResult(dayoffService.finAll(pageable));
		model.setTotalItem(dayoffService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / 2));
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/danh-sach-nhan-vien-nghi-phep";
	}

	@GetMapping(value = "/seachEmployee")
	public String seachPage(ModelMap map, @ModelAttribute("model") ListEmployeeDTO model) {
		model.setListResult(employeeService.findByFullname(model.getFullname()));
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/danh-sach-nhan-vien-chinh-thuc";
	}
}

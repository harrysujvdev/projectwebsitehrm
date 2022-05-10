package com.laptrinhjavaweb.controller.admin;

import java.util.ResourceBundle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.ListEmployeeDTO;
import com.laptrinhjavaweb.service.IEmployeeService;
import com.laptrinhjavaweb.service.IUserService;

@Controller(value = "PlayoutCTLAdmin")
public class PlayoutController {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Autowired
	IUserService userService;

	@Autowired
	IEmployeeService employeeService;

	@GetMapping(value = "/quan-tri/thong-tin/lich-trinh")
	public ModelAndView calenderPage() {
		return new ModelAndView("admin/pagelayout/calender");
	}

	@GetMapping(value = "/quan-tri/thong-tin/hinh-anh-cong-ty")
	public ModelAndView imagePage() {
		return new ModelAndView("admin/pagelayout/hinh-anh-cong-ty");
	}

	@GetMapping(value = "/quan-tri/quan-ly-khach-hang/CSKH")
	public ModelAndView messengerPage() {
		return new ModelAndView("admin/pagelayout/messenger");
	}

	@GetMapping(value = "/quan-tri/thong-ke/bang-luong-chi-tiet")
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
		return "admin/pagelayout/bang-luong-chi-tiet";
	}
}

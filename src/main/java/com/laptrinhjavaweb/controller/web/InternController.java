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
import com.laptrinhjavaweb.dto.InternDTO;
import com.laptrinhjavaweb.service.IInternService;

@Controller(value = "EnternCTL")
public class InternController {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Autowired
	private IInternService internService;

	@GetMapping(value = "/nhan-vien-thuc-tap/danh-sach")
	public String showList(ModelMap map, @RequestParam(value = "page", required = false) int page,
			@RequestParam(value = "message", required = false) String message) {
		InternDTO model = new InternDTO();
		model.setPage(page);
		if (message != null) {
			map.addAttribute(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		Pageable pageable = new PageRequest(page - 1, 2);
		model.setListResult(internService.findAll(pageable));
		model.setTotalItem(internService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / 2));
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/danh-sach-thuc-tap-sinh";

	}

	@GetMapping(value = "/nhan-vien-thuc-tap/chinh-sua")
	public ModelAndView editPage(@RequestParam(value = "message", required = false) String message,
			@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("web/chinh-sua-nhan-vien-thuc-tap");
		InternDTO model = new InternDTO();
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		if (id != null) {
			model = internService.findById(id);
		}
		mav.addObject(SystemConstant.MODEL, model);
		return mav;
	}

	@GetMapping(value = "/seachIntern")
	public String seachPage(ModelMap map, @ModelAttribute("model") InternDTO model) {
		model.setListResult(internService.findByFullname(model.getFullname()));
		map.addAttribute(SystemConstant.MODEL, model);
		return "web/danh-sach-thuc-tap-sinh";
	}
}

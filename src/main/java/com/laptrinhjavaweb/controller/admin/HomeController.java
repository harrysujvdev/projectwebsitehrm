package com.laptrinhjavaweb.controller.admin;

import java.util.ResourceBundle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.security.BcryrtPassCode;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.util.SecurityUtils;

@Controller(value = "HomeCTLAdmin")
public class HomeController {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Autowired
	IUserService userService;

	@Autowired
	private BcryrtPassCode bcryrtPassCode;

	@GetMapping(value = "/quan-tri/trang-chu")
	public ModelAndView homePage() {
		return new ModelAndView("admin/home");
	}

	@GetMapping(value = "/quan-tri/thong-tin-tai-khoan")
	public String infoPage(ModelMap map, @ModelAttribute("model") UserDTO model) {
		model.setFullname(SecurityUtils.getPrincipal().getFullname());
		model.setPhone(SecurityUtils.getPrincipal().getPhone());
		model.setEmail(SecurityUtils.getPrincipal().getEmail());
		model.setPassport(SecurityUtils.getPrincipal().getPassport());
		model.setSocialnetwork(SecurityUtils.getPrincipal().getSocialnetwork());
		map.addAttribute(SystemConstant.MODEL, model);
		return "admin/infouser/thong-tin-tai-khoan";
	}

	@GetMapping(value = "/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan")
	public ModelAndView registerPage(@RequestParam(value = "message", required = false) String message) {
		ModelAndView mav = new ModelAndView("admin/infouser/dang-ky-tai-khoan");
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		return mav;
	}

	@GetMapping(value = "/quan-tri/quan-ly-tai-khoan/danh-sach-tai-khoan")
	public String listUserPage(ModelMap map,@ModelAttribute("model") UserDTO model,
			@RequestParam(value = "message", required = false) String message) {
		ModelAndView mav = new ModelAndView("admin/infouser/danh-sach-tai-khoan");
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		model.setListResult(userService.finAll());
		map.addAttribute(SystemConstant.MODEL, model);
		return "admin/infouser/danh-sach-tai-khoan";
	}

	@PostMapping(value = "/createUser")
	public String createUser(@ModelAttribute("model") UserDTO model) {
		if (userService.findByUsername(model.getUsername()) == null) {
			model.setPassword(bcryrtPassCode.getBcryrtPass(model.getPassword()));
			model = userService.save(model);
			if (model != null) {
				return "redirect:/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan?message=usersuccess";
			} else {
				return "redirect:/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan?message=usererror";
			}

		} else {
			return "redirect:/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan?message=userNameExit";
		}

	}

	@PostMapping(value = "/updateStatus")
	public String permissionPage(@ModelAttribute("model") UserDTO model) {
		if (model != null) {
			userService.updateStatus(model);
			if (model.getStatus() == 1) {
				return "redirect:/quan-tri/quan-ly-tai-khoan/danh-sach-tai-khoan?message=enabledSuccsess";
			} else {
				return "redirect:/quan-tri/quan-ly-tai-khoan/danh-sach-tai-khoan?message=disabledSuccsess";
			}
		} else {
			return "redirect:/quan-tri/quan-ly-tai-khoan/danh-sach-tai-khoan?message=updateStatusError";
		}
	}

}

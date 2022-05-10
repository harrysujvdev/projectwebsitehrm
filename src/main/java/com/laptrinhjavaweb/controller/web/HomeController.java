package com.laptrinhjavaweb.controller.web;

import java.security.NoSuchAlgorithmException;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.constant.SystemConstant;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.security.BcryrtPassCode;
import com.laptrinhjavaweb.service.IUserService;

@Controller(value = "HomeCTLWeb")
public class HomeController {

	@Autowired
	private IUserService userService;

	@Autowired
	private BcryrtPassCode bcryrtPassCode;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		return new ModelAndView("web/home");
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "message", required = false) String message) {
		ModelAndView mav = new ModelAndView("login/loginhome");
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		return mav;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/dang-nhap");
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public String accessDenied() {
		return "redirect:/dang-nhap?message=accessdenied";
	}

	@GetMapping(value = "/dang-nhap/quen-mat-khau")
	public ModelAndView fogotpassPage(@RequestParam(value = "message", required = false) String message) {
		ModelAndView mav = new ModelAndView("login/fogot-password");
		if (message != null) {
			mav.addObject(SystemConstant.MESSAGE, resourceBundle.getString(message));
		}
		return mav;
	}

	@PostMapping(value = "/fogot")
	public String fogotPage(HttpServletRequest request, @ModelAttribute("model") UserDTO model) throws NoSuchAlgorithmException {
		model = userService.findByUsername(model.getUsername());
		String ipassword = request.getParameter("ipassword");
		String retypepass = request.getParameter("rtpassword");
		String ipassport = request.getParameter("ipassport");
		if (model != null) {
			if (model.getPassport().equals(ipassport)) {
				if (retypepass.equals(ipassword)) {
					model.setPassword(bcryrtPassCode.getBcryrtPass(retypepass));
					userService.upPassword(model);
					return "redirect:/dang-nhap/quen-mat-khau?message=resetpassok";
				} else {
					return "redirect:/dang-nhap/quen-mat-khau?message=resetpassfail";
				}
			} else {
				return "redirect:/dang-nhap/quen-mat-khau?message=passportfail";
			}
		} else {
			return "redirect:/dang-nhap/quen-mat-khau?message=notusername";
		}

	}

}

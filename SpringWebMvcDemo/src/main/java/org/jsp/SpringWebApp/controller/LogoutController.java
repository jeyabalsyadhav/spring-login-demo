package org.jsp.SpringWebApp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView view = new ModelAndView();
		view.setViewName("login.jsp");
		view.addObject("msg", "Your logged out");
		return view;
	}
}

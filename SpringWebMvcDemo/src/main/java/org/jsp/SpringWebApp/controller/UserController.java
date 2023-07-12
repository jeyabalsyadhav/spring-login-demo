package org.jsp.SpringWebApp.controller;

import org.jsp.SpringWebApp.dao.UserDao;
import org.jsp.SpringWebApp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(names = { "u" })
public class UserController {
	@Autowired
	UserDao dao;

	@RequestMapping(value = "/save")
	public ModelAndView saveUser(User user, ModelAndView view) {
		user = dao.saveUser(user);
		view.addObject("msg", "User registered");
		view.setViewName("login.jsp");
		return view;
	}

	@RequestMapping(value = "/update")
	public ModelAndView updateUser(User user, ModelAndView view) {
		user = dao.updateUser(user);
		view.addObject("msg", "User updated successfull");
		view.setViewName("print.jsp");
		return view;
	}

	@PostMapping(value = "/login")
	public ModelAndView login(long phone,String password) {
		User user = dao.verifyUser(phone, password);
		ModelAndView view = new ModelAndView();
		if (user != null) {
			view.addObject("u", user);
			view.setViewName("home.jsp");
			return view;
		} else {
			view.addObject("msg", "Invalid phone & password");
			view.setViewName("login.jsp");
			return view;
		}
	}

	@RequestMapping(value = "/delete")
	public ModelAndView deleteUserById(@RequestParam int id, ModelAndView view) {
		boolean isDeleted = dao.deleteUser(id);
		if (isDeleted) {
			view.setViewName("login.jsp");
			view.addObject("msg", "Your account is deleted");
			return view;
		} else {
			view.setViewName("login.jsp");
			view.addObject("msg", "You must login to delete");
			return view;
		}
	}
}

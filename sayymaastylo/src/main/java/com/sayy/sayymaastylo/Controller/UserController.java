package com.sayy.sayymaastylo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sayy.sayymaastylo.DAO.UserDAO;
import com.sayy.sayymaastylo.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO udao;
	


	@RequestMapping("/signup")
	public ModelAndView showsignuppage() {
		System.out.println("----signup page displaying---");
		ModelAndView mv = new ModelAndView("signup");
		mv.addObject("User", new User());
		return mv;
	}

	@RequestMapping("/login")
	public String showloginpage() {
		System.out.println("----login page displaying---");
		return "login";
	}
	
	
	@RequestMapping("/adduser")
	public String insertuser(@ModelAttribute("User")User u) {
		System.out.println("----signup page displaying---");
		udao.insert_user(u);		
		return "index";
	}
}

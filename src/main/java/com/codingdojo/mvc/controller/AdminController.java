package com.codingdojo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {


	@RequestMapping(value="/admin", method= RequestMethod.GET)
	public String loginPage() {
		return "fetch";
	}
	
	@RequestMapping(value="/admin", method= RequestMethod.POST)
	public String welcomePage(@RequestParam String username, @RequestParam String password) {
		if(username.equals("admin") && password.equals("root")) {
		return "redirect:/";
	}
	return "fetch";
	}
	
}

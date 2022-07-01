package com.spring.TeamProject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		
//		model.addAttribute("header", "/WEB-INF/main/header.jsp");
		return "index";
	}
	
}

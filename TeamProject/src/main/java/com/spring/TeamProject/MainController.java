package com.spring.TeamProject;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.MainService;

@Controller
@RequestMapping(value="/")
public class MainController {

	@Autowired
	MainService mainService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("container1", "/WEB-INF/main/container1.jsp");
		model.addAttribute("container2", "/WEB-INF/main/container2.jsp");
		model.addAttribute("container3", "/WEB-INF/main/container3.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "index";
	}
	
	@PostMapping(value="getProductList")
	@ResponseBody
	public Map<String, Object> getProductList(@RequestParam String num){
		Map<String, Object> map = mainService.getProductList(num);
		System.out.println(map);
		return map;
	}
	 
}

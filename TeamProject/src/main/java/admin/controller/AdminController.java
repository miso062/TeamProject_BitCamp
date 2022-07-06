package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.bean.AdminDTO;
import admin.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping(value="test")
	public String test() {
		adminService.test();
		return "/admin/test";
	}
	
	@PostMapping(value="getnoticeList")
	@ResponseBody
	public Map<String, Object> getnoticeList(@RequestParam(required = false, defaultValue = "1") String pg){
		List<AdminDTO> list = adminService.getnoticeList(pg);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		return map;
	}

}

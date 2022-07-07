package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;
import admin.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping(value="notice")
	public String notice(@RequestParam (required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeContainer1.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@PostMapping(value="getnoticeList")
	@ResponseBody
	public Map<String, Object> getnoticeList(@RequestParam(required = false, defaultValue = "1") String pg){
		List<AdminDTO> list = adminService.getnoticeList(pg);
		
		AdminPaging adminPaging = adminService.getBoardPaging(pg);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminPaging",adminPaging);
		map.put("list",list);
		
		return map;
	}
	@GetMapping(value="noticewrite")
	public String noticewrite(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticewrite.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}

	@PostMapping(value="getnoticeWrite")
	@ResponseBody
	public void getnoticeWrite(@ModelAttribute AdminDTO adminDTO, HttpSession httpSession) {
		adminService.getnoticeWrite(adminDTO);
	}
	
	@GetMapping(value="noticeView")
	public String noticeView(@RequestParam String seq, String pg, Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("seq",seq);
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeView.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@PostMapping(value="getnoticeView")
	@ResponseBody
	public Map<String, Object> getBoardView(@RequestParam String seq, String pg, HttpSession httpSession) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		AdminDTO adminDTO = adminService.getnoticeView(seq,pg);
		map.put("adminDTO", adminDTO);
		return map;
	}
}

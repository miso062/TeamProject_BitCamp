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
import admin.bean.AdminQnADTO;
import admin.service.AdminService;
import product.bean.ProductDTO;
import user.bean.UserDTO;
import user.service.UserService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	UserService userService;
	
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
	
	@PostMapping(value="noticeDelete")
	@ResponseBody
	public void noticeDelete(@RequestParam String seq, String pg) {
		adminService.noticeDelete(seq,pg);
	}
	
	@GetMapping(value="noticeUpdate")
	public String noticeUpdate(@RequestParam String seq, String pg, Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("seq",seq);
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeUpdate.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@PostMapping(value="getnoticeUpdate")
	@ResponseBody
	public AdminDTO getnoticeUpdate(@RequestParam String seq, String pg) {
		AdminDTO adminDTO = adminService.getnoticeUpdate(seq,pg); 
		return adminDTO;
	}
	
	@PostMapping(value="addnoticeUpdate")
	@ResponseBody
	public void addnoticeUpdate(@ModelAttribute AdminDTO adminDTO,@RequestParam String seq, HttpSession httpSession) {
		adminDTO.setNotice_id(seq);
		adminService.addnoticeUpdate(adminDTO);
	}
	
	@GetMapping(value="noticeStandard")
	public String noticeStandard(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeStandard.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@GetMapping(value="noticeQnA")
	public String noticeQnA(@RequestParam (required = false, defaultValue = "1") String pg,Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeQnA.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@GetMapping(value="noticeQnAwrite")
	public String noticeQnAwrite(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeQnAwrite.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@PostMapping(value="getnoticeQnAWrite")
	@ResponseBody
	public void getnoticeQnAWrite(@ModelAttribute AdminQnADTO adminQnADTO, HttpSession httpSession) {
		
		adminService.getnoticeQnAWrite(adminQnADTO);
	}
	
	@PostMapping(value="getnoticeQnAList")
	@ResponseBody
	public Map<String, Object> getnoticeQnAList(@RequestParam(required = false, defaultValue = "1") String pg){
		List<AdminQnADTO> list = adminService.getnoticeQnAList(pg);
		
		AdminPaging adminPaging = adminService.getBoardPaging1(pg);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminPaging",adminPaging);
		map.put("list",list);
		
		return map;
	}
	
	@PostMapping(value="getnoticeQnAListsearch")
	@ResponseBody
	public Map<String, Object> getnoticeQnAListsearch(@RequestParam(required = false, defaultValue = "1") String pg, String category ){
		List<AdminQnADTO> list = adminService.getnoticeQnAListsearch(pg, category);
		AdminPaging adminPaging = adminService.getBoardPaging2(pg, category);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminPaging",adminPaging);
		map.put("list",list);
		
		return map;
	}
	
	@GetMapping(value="noticeqnaUpdate")
	public String noticeqnaUpdate(@RequestParam String seq, String pg, Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("seq",seq);
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/admin/noticenav.jsp");
		model.addAttribute("container", "/WEB-INF/admin/noticeQnAUpdate.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/admin/notice";
	}
	
	@PostMapping(value="getnoticeQnAUpdate")
	@ResponseBody
	public AdminQnADTO getnoticeQnAUpdate(@RequestParam String seq, String pg) {
		AdminQnADTO adminQnADTO = adminService.getnoticeQnAUpdate(seq,pg); 
		return adminQnADTO;
	}
	
	@PostMapping(value="addnoticeQnAUpdate")
	@ResponseBody
	public void addnoticeQnAUpdate(@ModelAttribute AdminQnADTO adminQnADTO,@RequestParam String seq, HttpSession httpSession) {
		adminQnADTO.setQna_id(seq);
		adminService.addnoticeQnAUpdate(adminQnADTO);
	}
	
	@PostMapping(value="noticeqnaDelete")
	@ResponseBody
	public void noticeqnaDelete(@RequestParam String seq, String pg) {
		adminService.noticeqnaDelete(seq,pg);
	}
	
	@GetMapping(value="/")
	public String admin(Model model, HttpSession session) {
		String user_id = (String) session.getAttribute("memId");
		if(user_id == null || userService.getAuthor(user_id) != 10) {
			model.addAttribute("content", "/WEB-INF/admin/adminLoginFail.jsp");
			return "admin/adminLoginFail";
		}else {
			model.addAttribute("content", "/WEB-INF/admin/admin.jsp");
			return "/admin/adminMain";				
		}
	}
	
	@GetMapping(value="/userManage")
	public String userManage(Model model) {
		model.addAttribute("content", "/WEB-INF/admin/userManage.jsp");
		return "/admin/adminMain";
	}
	
	@GetMapping(value="/proManage")
	public String proManage(Model model) {
		model.addAttribute("content", "/WEB-INF/admin/proManage.jsp");
		return "/admin/adminMain";
	}
	
	@PostMapping(value="getAllUserList")
	@ResponseBody
	public List<UserDTO> getAllUserList(){
		List<UserDTO> list = adminService.getAllUserList();
		return list;
	}
	
	@PostMapping(value="getAllUserList2")
	@ResponseBody
	public List<UserDTO> getAllUserList2(){
		List<UserDTO> list = adminService.getAllUserList2();
		return list;
	}
	
	@PostMapping(value="getAllUserList3")
	@ResponseBody
	public List<UserDTO> getAllUserList3(){
		List<UserDTO> list = adminService.getAllUserList3();
		return list;
	}
	
	@PostMapping(value="getAllAdmin")
	@ResponseBody
	public Map<String,Object> getAllAdmin(){
		Map<String,Object>map=adminService.getAllAdmin();
		return map;
	}
	
	@PostMapping(value="deleteThisUser")
	@ResponseBody
	public void deleteThisUser(@RequestParam String user_id) {
		adminService.deleteThisUser(user_id);
	}
	
	@PostMapping(value="deleteThisPro")
	@ResponseBody
	public void deleteThisPro(@RequestParam String product_id) {
		System.out.println(product_id);
		adminService.deleteThisPro(product_id);
	}
	
	@PostMapping(value="getsearchUserList")
	@ResponseBody
	public List<UserDTO> getsearchUserList(@RequestParam String keyword){
		List<UserDTO>list=adminService.getsearchUserList(keyword);
			return list;
	}
	
	@PostMapping(value="getAllProList3")
	@ResponseBody
	public List<ProductDTO> getAllProList3(@RequestParam String keyword){
		List<ProductDTO>list =adminService.getAllproList3(keyword);
		return list;
	}
	
	@PostMapping(value="getSearchAdmin")
	@ResponseBody
	public Map<String,Object> getSearchAdmin(@RequestParam String keyword){
		Map<String,Object>map=adminService.getSearchAdmin(keyword);
		return map;
	}

	@PostMapping(value="getAllProList")
	@ResponseBody
	public List<ProductDTO>getAllProList(){
		List<ProductDTO> list = adminService.getAllProList();
		return list;
	}
	@PostMapping(value="getAllProList2")
	@ResponseBody
	public List<ProductDTO>getAllProList2(){
		List<ProductDTO> list = adminService.getAllProList2();
		return list;
	}
  
	@PostMapping(value="getAllProImg")
	@ResponseBody
	public Map<String, Object> getAllProImg(@RequestParam int product_id){
		Map<String,Object>map = adminService.getAllProImg(product_id);
		return map;

	}
	
	@PostMapping(value="getSearchAdmin3")
	@ResponseBody
	public Map<String, Object> getSearchAdmin3(@RequestParam String keyword){
		Map<String,Object> map = adminService.getSearchAdmin3(keyword);
		return map;
	}
	
	@GetMapping(value="/getVisitInfo")
	@ResponseBody
	public Map<String, Object> getVisitInfo(){
		return adminService.getVisitInfo();
	}
	
	@GetMapping(value="/addVisitCtn")
	@ResponseBody
	public void addVisitCtn() {
		adminService.addVisitCtn();
	}
	
	@GetMapping(value="/getSignUpInfo")
	@ResponseBody
	public List<UserDTO> getSignUpInfo(){
		return adminService.getSignUpInfo();
	}
}

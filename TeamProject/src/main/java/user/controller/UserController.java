package user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.jdbc.proxy.annotation.Post;
import user.bean.AddressDTO;
import user.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	
	@GetMapping(value="login")
	public String login(Model model) {
		System.out.println(model.toString());
		return "/user/login";
	}
	
	@GetMapping(value="signUp")
	public String signUp() {
		return "user/signUp";
	}
	
	@GetMapping(value="/my")
	public String myPage(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/user/myPage/myPageNav.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/myPage/myPage";
	}
	
	@GetMapping(value="myPage")
	public String myPageMain(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/myPageMain.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="myPageEdit")
	public String myPageEdit(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/myPageEdit.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="buyHistory")
	public String buyHistory(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/buyHistory.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="sellHistory")
	public String sellHistory(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/sellHistory.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="likePro")
	public String likePro(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/likePro.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="addressbook")
	public String addressbook(Model model)  {
		model.addAttribute("container","/WEB-INF/user/myPage/addressbook.jsp");
		return "forward:/user/my";
	}
	@PostMapping(value="addaddressbook")
	@ResponseBody
	public void addaddressbook(@ModelAttribute AddressDTO addressDTO) {
		System.out.println(addressDTO.getAddr());
		addressDTO.setUser_id("yy1004@gmail.com");
		userService.addaddressbook(addressDTO);
	}
}

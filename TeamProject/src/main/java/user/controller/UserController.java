package user.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import user.bean.UserDTO;
import user.service.RandomPassword;
import user.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@GetMapping(value="login")
	public String login(Model model) {
		return "/user/login";
	}

	@PostMapping(value="checkLogin")
	@ResponseBody
	public Map<String, Object> checkLogin(@RequestParam String log_email_input, String log_pwd_input, HttpSession httpSession) {
		Map<String, Object> map = userService.checkLogin(log_email_input, log_pwd_input);
		
		return map;
	}

    
	@PostMapping(value="checkLogout")
	@ResponseBody
	public void checkLogout(HttpSession session) {
		session.invalidate();
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
		this.test();
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
	
	@GetMapping(value="findEmailMain")
	public String findEmailMain(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/findEmailMain";
	}
	
	@GetMapping(value="findEmail")
	public String findEmail(Model model) {
		model.addAttribute("container", "/WEB-INF/user/findEmail.jsp");
		return "forward:/user/findEmailMain";
	}
	
	@PostMapping(value="findEmaiAddress")
	@ResponseBody
	public Map<String, String> findEmailAddress(@RequestParam String phone) {
		Map<String, String> map = userService.findEmailAddress(phone);
		return map;                            
	}
	
	
	@GetMapping(value="findEmailResult")
	public String findEmailResult(Model model, @RequestParam String email) {
		int atPoint = email.indexOf("@");
		email = email.substring(0, 1) +
				email.substring(1, atPoint-1).replaceAll(".", "*") + 
				email.substring(atPoint-1);
		
		model.addAttribute("container", "/WEB-INF/user/findEmailResult.jsp");
		model.addAttribute("email", email);
		return "forward:/user/findEmailMain";
	}
	
	@GetMapping(value="findPWDMain")
	public String findPWDMain(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/findPWDMain";
	}
	
	@GetMapping(value="findPWD")
	public String findPWD(Model model) {
		model.addAttribute("container", "/WEB-INF/user/findPWD.jsp");
		return "forward:/user/findPWDMain";
	}
	
	
	@PostMapping(value="findPwCheck")
	@ResponseBody
	public Map<String, Object> findPwCheck(@RequestParam String phone, String user_id, HttpSession HttpSession){
		Map<String, Object> map = userService.findPwCheck(phone, user_id);
		return map;
	}
	
	public void test() {
		String test = "hihih";
		String securityTest = passwordEncoder.encode(test);
		boolean encodeTest = passwordEncoder.matches(test, "hihi");
		
		System.out.println(securityTest + " | " + encodeTest);
	}
}

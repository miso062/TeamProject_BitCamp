package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@GetMapping(value="login")
	public String login() {
		return "/user/login";
	}
	
	@GetMapping(value="myPage")
	public String myPage(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("container", "/WEB-INF/user/myPageContainer.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/myPage";
	}
	
	@GetMapping(value="myPageEdit")
	public String myPageEdit(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("container", "/WEB-INF/user/myPageEditContainer.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/myPage";
	}
}

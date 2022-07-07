package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/shop")
public class BuyController {

	@GetMapping(value="/buy")
	public String buy(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/shop/buy/buy";
	}
	
	@GetMapping(value="/selectBuySize")
	public String selectSize(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/selectSize.jsp");
		return "forward:/shop/buy";
	}
	
	@GetMapping(value="/buyCheck")
	public String buyCheck(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/buyCheck.jsp");
		return "forward:/shop/buy";
	}
}

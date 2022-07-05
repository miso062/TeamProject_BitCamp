package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/shop")
public class ShopController {

	@GetMapping(value="/")
	public String shop(Model model) {
		model.addAttribute("head", "/WEB-INF/shop/shopHeader.jsp");
		model.addAttribute("container", "/WEB-INF/shop/shopContainer.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "shop/shop";
	}
}

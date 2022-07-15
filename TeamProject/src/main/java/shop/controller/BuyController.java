package shop.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping(value="/buyPay")
	public String buyPay(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/buyPay.jsp");
		model.addAttribute("payment_method", "구매입찰");
		return "forward:/shop/buy";
	}
	
	@PostMapping(value="/insertBuyPay")
	public void insertBuyPay(@RequestParam Map<String, Object> map) {
//		TODO insert Buy Information to DB
//		TODO make scheduler for reservation payment
//		TODO 만약, 즉시 결제라면 -> Sell_History Status 내역 업데이트
//			 						Market_Price 내역 추가 
		System.out.println(map);
	}
	
	@GetMapping(value="/enterBuyPrice")
	public String enterBuyPrice(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/enterPrice.jsp");
		return "forward:/shop/buy";
	}
	
	@GetMapping(value="/buyFinish")
	public String buyFinish(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/buyFinish.jsp");
		return "forward:/shop/buy";
	}
}

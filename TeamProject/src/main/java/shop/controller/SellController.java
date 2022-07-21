package shop.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import product.bean.Buy_historyDTO;
import product.bean.Sell_historyDTO;
import shop.service.ShopService;

@Controller
@RequestMapping(value="/shop")
public class SellController {
	
	@Autowired
	ShopService shopService;

//	sell main 페이지
	@RequestMapping(value="/sell")
	public String buy(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/shop/sell/sell";
	}
	
//	판매 사이즈 선택 페이지
	@GetMapping(value="/selectSellSize")
	public String selectSize(Model model, @RequestParam int product_id) {
		model.addAttribute("container", "/WEB-INF/shop/sell/selectSize.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/sell";
	}
	
//	상품 정보 불러오기
	@PostMapping(value="/getSelectSellSizeInfo")
	@ResponseBody
	public List<Buy_historyDTO> getSelectSizeInfo(@RequestParam int product_id) {
		return shopService.getBuyList(product_id);
	}
	
//	판매 시 체크사항 페이지
	@GetMapping(value="/sellCheck")
	public String sellCheck(Model model, @RequestParam int product_id, @RequestParam int size) {
		model.addAttribute("container", "/WEB-INF/shop/sell/sellCheck.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		model.addAttribute("size", size);
		return "forward:/shop/sell";
	}
	
//	판매 금액 입력 페이지
	@GetMapping(value="/enterSellPrice")
	public String enterBuyPrice(Model model, @RequestParam int product_id, @RequestParam int size) {
		model.addAttribute("container", "/WEB-INF/shop/sell/enterPrice.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		model.addAttribute("size", size);
		return "forward:/shop/sell";
	}
	
//	판매 결제 페이지
	@PostMapping(value="/sellPay")
	public String sellPay(Model model, @RequestParam Map<String, Object> map) {
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		int product_id = Integer.parseInt(String.valueOf(map.get("product_id")));
		int total_price = Integer.parseInt(String.valueOf(map.get("price")).replaceAll(",", ""))+3600;
		
		map.put("productDTO", shopService.getProduct(product_id));
		map.put("productImgDTO", shopService.getImage(product_id));
		map.put("total_price", decFormat.format(total_price));
		map.put("userDTO", shopService.getUserInfo());
		
		model.addAttribute("container", "/WEB-INF/shop/sell/sellPay.jsp");
		model.addAttribute("map", map);
		return "forward:/shop/sell";
	}
	
	@GetMapping(value="/sellFinish")
	public String sellFinish(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/sell/sellFinish.jsp");
		return "forward:/shop/sell";
	}
}

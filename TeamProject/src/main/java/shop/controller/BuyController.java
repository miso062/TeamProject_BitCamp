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
import product.bean.ProductDTO;
import product.bean.Sell_historyDTO;
import shop.service.ShopService;
import user.bean.AddressDTO;

@Controller
@RequestMapping(value="/shop")
public class BuyController {
	
	@Autowired
	ShopService shopService;

	@RequestMapping(value = "/buy")
	public String buy(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/shop/buy/buy";
	}
	
	@GetMapping(value="/selectBuySize")
	public String selectSize(Model model, @RequestParam int product_id) {
		model.addAttribute("container", "/WEB-INF/shop/buy/selectSize.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/buy";
	}
	
	@PostMapping(value="/getSelectSizeInfo")
	@ResponseBody
	public List<Sell_historyDTO> getSelectSizeInfo(@RequestParam int product_id) {
		return shopService.getSellList(product_id);
	}
	
	@GetMapping(value="/buyCheck")
	public String buyCheck(Model model, @RequestParam int product_id, @RequestParam int size) {
		model.addAttribute("container", "/WEB-INF/shop/buy/buyCheck.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		model.addAttribute("size", size);
		return "forward:/shop/buy";
	}
	
	@PostMapping(value="/buyPay")
	public String buyPay(Model model, @RequestParam Map<String, Object> map) {
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		int product_id = Integer.parseInt(String.valueOf(map.get("product_id")));
		int total_price = Integer.parseInt(String.valueOf(map.get("price")).replaceAll(",", ""))+3600;
		
		map.put("productDTO", shopService.getProduct(product_id));
		map.put("productImgDTO", shopService.getImage(product_id));
		map.put("total_price", decFormat.format(total_price));
		
		model.addAttribute("container", "/WEB-INF/shop/buy/buyPay.jsp");
		model.addAttribute("map", map);
		return "forward:/shop/buy";
	}
	
	@GetMapping(value="/getDefalutAddress")
	@ResponseBody
	public AddressDTO getDefalutAddress() {
		return shopService.getDefalutAddress();
	}
	
	@GetMapping(value="/enterBuyPrice")
	public String enterBuyPrice(Model model, @RequestParam int product_id, @RequestParam int size) {
		model.addAttribute("container", "/WEB-INF/shop/buy/enterPrice.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		model.addAttribute("size", size);
		return "forward:/shop/buy";
	}
	
	@PostMapping(value="/getPrice")
	@ResponseBody
	public Map<String, Object> getPrice(@RequestParam int product_id, @RequestParam int size) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sellDTO", shopService.getSellDTO(product_id, size));
		map.put("buyDTO", shopService.getBuyDTO(product_id, size));
		return map;
	}
	
	@PostMapping(value="/insertBuyPay")
	public void insertBuyPay(@RequestParam Map<String, Object> map) {
//		TODO insert Buy Information to DB
//		TODO make scheduler for reservation payment
//		TODO 만약, 즉시 결제라면 -> Sell_History Status 내역 업데이트
//			 						Market_Price 내역 추가 
		System.out.println(map);
	}
	
	@GetMapping(value="/buyFinish")
	public String buyFinish(Model model) {
		model.addAttribute("container", "/WEB-INF/shop/buy/buyFinish.jsp");
		return "forward:/shop/buy";
	}
}

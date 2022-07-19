package shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import product.bean.Market_priceDTO;
import product.bean.ProductImgDTO;
import shop.service.ShopService;

@Controller
@RequestMapping(value="/shop")
public class ShopController {
	
	@Autowired
	ShopService shopService;
	
	@RequestMapping
	public String shop(Model model) {
		model.addAttribute("head", "/WEB-INF/shop/shopHeader.jsp");
		model.addAttribute("container", "/WEB-INF/shop/shopContainer.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "shop/shop";
	}
	
	@GetMapping(value="/shopDetail")
	public String shopDetail(Model model, @RequestParam int product_id) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("container1", "/WEB-INF/shop/shopDetail/shopDetailContainer1.jsp");
		model.addAttribute("container2", "/WEB-INF/shop/shopDetail/shopDetailContainer2.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		model.addAttribute("product_id", product_id);
		return "shop/shopDetail/shopDetail";
	}
	
	@PostMapping(value="scrollProduct")
	@ResponseBody
	public Map<String, Object> scrollProduct(@RequestParam String num){
		Map<String, Object> map = shopService.scrollProduct(num);
    return map;
  }
	
  
	@PostMapping(value="getshopDetail")
	@ResponseBody
	public Map<String, Object> getShopDetail(@RequestParam int product_id){
		Map<String, Object> map = shopService.getShopDetail(product_id);
		return map;
	}
	@PostMapping(value="getchart")
	@ResponseBody
	public List<Market_priceDTO> getchart(@RequestParam int product_id) {
		return shopService.getchart(product_id);
		 
	}
}

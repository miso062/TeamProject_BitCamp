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
import product.bean.ShopDTO;
import shop.service.ShopService;
import user.bean.UserDTO;
import user.service.UserService;

@Controller
@RequestMapping(value="/shop")
public class ShopController {
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping
	public String shop(Model model, HttpSession session) {
		//샵헤더프로필이미지
		String user_id = (String) session.getAttribute("memId");
		if(user_id != null) {
			UserDTO userDTO = userService.getUserInfo(user_id);
			model.addAttribute("userDTO", userDTO);
		}
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
	public List<ShopDTO> scrollProduct(@RequestParam String num,
									@RequestParam String sort,
									@RequestParam String command,
									@RequestParam(value="category[]",  required = false) List<String> category,
									@RequestParam(value="brand[]",   required = false) List<String> brand,
									@RequestParam(value="gender[]",  required = false) List<String> gender,
									@RequestParam(value="collection[]",  required = false) List<String> collection
									){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("command", command);
		System.out.println(category);
		System.out.println(brand);
		System.out.println(gender);
		System.out.println(collection);
		
		if(gender != null) {
			for(int i=1 ; i<=gender.size() ; i++) {
				if(gender.get(i-1).equals("남성")) {
					gender.set(i-1, "0");
				}else if(gender.get(i-1).equals("여성")) {
					gender.set(i-1, "1");
				}else if(gender.get(i-1).equals("공용")) {
					gender.set(i-1, "2");
				}	
			}
		}
		
		
		map.put("category", category);
		map.put("brand", brand);
		map.put("gender", gender);
		map.put("collection", collection);
		
		System.out.println(map);
		List<ShopDTO> list = shopService.scrollProductList(map, sort);
	
		return list;
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
		List<Market_priceDTO> list = shopService.getchart(product_id);
		return list;
		 
	}
	
	@PostMapping(value="getshopDetaillist")
	@ResponseBody
	public List<Market_priceDTO> getshopDetaillist(@RequestParam int product_id){
		List<Market_priceDTO> list = shopService.getshopDetaillist(product_id);
		return list;
	}
	
	@PostMapping(value="getlikeproduct")
	@ResponseBody
	public String getlikeproduct(@RequestParam int product_id) {
		 int count = shopService.getlikeproduct(product_id);
		 String count1 = count+"";
		return count1;
	}
	
}






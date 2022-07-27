package shop.controller;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import product.bean.Buy_historyDTO;
import product.bean.Sell_historyDTO;
import shop.service.ShopService;
import user.bean.AddressDTO;

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
	public String sellCheck(Model model,
						   @RequestParam(defaultValue = "0", required = false) int product_id,
						   @RequestParam(defaultValue = "0", required = false) int buy, 
						   @RequestParam(defaultValue = "0", required = false) int size) {
		
		model.addAttribute("size", size);
		
		if(buy != 0) {
			Buy_historyDTO buyDTO = shopService.getBuyDTOById(buy);
			product_id = buyDTO.getProduct_id();
			model.addAttribute("buyDTO", buyDTO);
			model.addAttribute("size", buyDTO.getSize_type());
		}
		
		model.addAttribute("container", "/WEB-INF/shop/sell/sellCheck.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/sell";
	}
	
//	판매 금액 입력 페이지
	@GetMapping(value="/enterSellPrice")
	public String enterBuyPrice(Model model,
							   @RequestParam(defaultValue = "0", required = false) int product_id,
							   @RequestParam(defaultValue = "0", required = false) int buy, 
							   @RequestParam(defaultValue = "0", required = false) int size) {
		
		model.addAttribute("size", size);
		
		if(buy != 0) {
			Buy_historyDTO buyDTO = shopService.getBuyDTOById(buy);
			product_id = buyDTO.getProduct_id();
			model.addAttribute("buyDTO", buyDTO);
			model.addAttribute("size", buyDTO.getSize_type());
		}
		
		model.addAttribute("container", "/WEB-INF/shop/sell/enterPrice.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/sell";
	}
	
//	현재 입찰 정보 가져오기
	@PostMapping(value="/getSellPrice")
	@ResponseBody
	public Map<String, Object> getSellPrice(
				@RequestParam(defaultValue = "0", required = false) int product_id,
				@RequestParam(defaultValue = "0", required = false) int buy, 
				@RequestParam(defaultValue = "0", required = false) int size) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(buy != 0) {
			Buy_historyDTO buyDTO = shopService.getBuyDTOById(buy);
			map.put("buyDTO", buyDTO);
			map.put("sellDTO", shopService.getSellDTO(product_id, Integer.parseInt(buyDTO.getSize_type())));
		}
		else {
			map.put("sellDTO", shopService.getSellDTO(product_id, size));
			map.put("buyDTO", shopService.getSellDTO(product_id, size));
		}
		return map;
	}
	
//	판매 결제 페이지
	@PostMapping(value="/sellPay")
	public String sellPay(Model model, @RequestParam Map<String, Object> map) {
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		int product_id = Integer.parseInt(String.valueOf(map.get("product_id")));
		int total_price = Integer.parseInt(String.valueOf(map.get("price")).replaceAll(",", ""))+600;
		
		map.put("productDTO", shopService.getProduct(product_id));
		map.put("productImgDTO", shopService.getImage(product_id));
		map.put("total_price", decFormat.format(total_price));
		map.put("userDTO", shopService.getUserInfo());
		
		model.addAttribute("container", "/WEB-INF/shop/sell/sellPay.jsp");
		model.addAttribute("map", map);
		return "forward:/shop/sell";
	}
	
//	판매 정보 입력
	@PostMapping(value="/insertSellPay")
	@ResponseBody
	public Sell_historyDTO insertSellPay(@ModelAttribute Sell_historyDTO sell_historyDTO,
									   @RequestParam(defaultValue = "0", required = false) int buy) {
		System.out.println(sell_historyDTO + " | " + buy);
//		즉시 판매
		if(buy != 0) {
			return shopService.insertSellPayBySellId(sell_historyDTO, buy);
		}
//		판매 입찰
		else {
			return shopService.insertSellPay(sell_historyDTO);
		}
	}
	
	@GetMapping(value="/sellFinish")
	public String sellFinish(Model model, @RequestParam int sell) {
		Sell_historyDTO sellDTO = shopService.getSellDTO(sell);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		model.addAttribute("container", "/WEB-INF/shop/sell/sellFinish.jsp");
		model.addAttribute("period", simpleDateFormat.format(sellDTO.getPeriod()));
		model.addAttribute("sellDTO", sellDTO);
		model.addAttribute("productImgDTO", shopService.getImage(sellDTO.getProduct_id()));
		return "forward:/shop/sell";
	}
}

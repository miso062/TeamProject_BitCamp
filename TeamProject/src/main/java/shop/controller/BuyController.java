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
public class BuyController {
	
	@Autowired
	ShopService shopService;

//	buy main 페이지
	@RequestMapping(value = "/buy")
	public String buy(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/shop/buy/buy";
	}
	
//	구매 사이즈 선택 페이지
	@GetMapping(value="/selectBuySize")
	public String selectSize(Model model, @RequestParam int product_id) {
		model.addAttribute("container", "/WEB-INF/shop/buy/selectSize.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/buy";
	}
	
//	상품 정보 불러오기
	@PostMapping(value="/getSelectBuySizeInfo")
	@ResponseBody
	public List<Sell_historyDTO> getSelectSizeInfo(@RequestParam int product_id) {
		return shopService.getSellList(product_id);
	}
	
//	구매 시 체크사항 페이지
	@GetMapping(value="/buyCheck")
	public String buyCheck(Model model,
						   @RequestParam(defaultValue = "0", required = false) int product_id,
						   @RequestParam(defaultValue = "0", required = false) int sell, 
						   @RequestParam(defaultValue = "0", required = false) int size) {
		
		model.addAttribute("size", size);
		
		if(sell != 0) {
			Sell_historyDTO sellDTO = shopService.getSellDTO(sell);
			product_id = sellDTO.getProduct_id();
			model.addAttribute("sellDTO", sellDTO);
			model.addAttribute("size", sellDTO.getSize_type());
		}
		
		model.addAttribute("container", "/WEB-INF/shop/buy/buyCheck.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/buy";
	}
	
//	구매 금액 입력 페이지
	@GetMapping(value="/enterBuyPrice")
	public String enterBuyPrice(Model model,
							   @RequestParam(defaultValue = "0", required = false) int product_id,
							   @RequestParam(defaultValue = "0", required = false) int sell, 
							   @RequestParam(defaultValue = "0", required = false) int size) {
		
		model.addAttribute("size", size);
		
		if(sell != 0) {
			Sell_historyDTO sellDTO = shopService.getSellDTO(sell);
			product_id = sellDTO.getProduct_id();
			model.addAttribute("sellDTO", sellDTO);
			model.addAttribute("size", sellDTO.getSize_type());
		}
		
		model.addAttribute("container", "/WEB-INF/shop/buy/enterPrice.jsp");
		model.addAttribute("productDTO", shopService.getProduct(product_id));
		model.addAttribute("productImgDTO", shopService.getImage(product_id));
		return "forward:/shop/buy";
	}
	
//	현재 입찰 정보 가져오기
	@PostMapping(value="/getBuyPrice")
	@ResponseBody
	public Map<String, Object> getBuyPrice(
				@RequestParam(defaultValue = "0", required = false) int product_id,
				@RequestParam(defaultValue = "0", required = false) int sell, 
				@RequestParam(defaultValue = "0", required = false) int size) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(sell != 0) {
			Sell_historyDTO sellDTO = shopService.getSellDTO(sell);
			map.put("sellDTO", sellDTO);
			map.put("buyDTO", shopService.getBuyDTO(product_id, Integer.parseInt(sellDTO.getSize_type())));
		}
		else {
			map.put("sellDTO", shopService.getSellDTO(product_id, size));
			map.put("buyDTO", shopService.getBuyDTO(product_id, size));
		}
		return map;
	}
	
//	기본 배송지 반환
	@GetMapping(value="/getDefalutAddress")
	@ResponseBody
	public AddressDTO getDefalutAddress() {
		return shopService.getDefalutAddress();
	}
	
//	배송지 목록 반환
	@PostMapping(value="/getAddrList")
	@ResponseBody
	public List<AddressDTO> getAddrList(){
		return shopService.getAddrList();
	}
	
//	선택된 주소지 반환
	@PostMapping(value="/getAddress")
	@ResponseBody
	public AddressDTO getAddress(@RequestParam int addr_id){
		return shopService.getAddress(addr_id);
	}
	
//	구매 결제 페이지
	@PostMapping(value="/buyPay")
	public String buyPay(Model model, @RequestParam Map<String, Object> map) {
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		int product_id = Integer.parseInt(String.valueOf(map.get("product_id")));
		int total_price = Integer.parseInt(String.valueOf(map.get("price")).replaceAll(",", ""))+3600;
		
		map.put("productDTO", shopService.getProduct(product_id));
		map.put("productImgDTO", shopService.getImage(product_id));
		map.put("total_price", decFormat.format(total_price));
		map.put("userDTO", shopService.getUserInfo());
		
		model.addAttribute("container", "/WEB-INF/shop/buy/buyPay.jsp");
		model.addAttribute("map", map);
		return "forward:/shop/buy";
	}
	
//	구매 정보 입력
	@PostMapping(value="/insertBuyPay")
	@ResponseBody
	public Buy_historyDTO insertBuyPay(@ModelAttribute Buy_historyDTO buy_historyDTO,
									   @RequestParam(defaultValue = "0", required = false) int sell) {
		System.out.println(buy_historyDTO);
//		즉시 구매
		if(sell != 0) {
			return shopService.insertBuyPayBySellId(buy_historyDTO, sell);
		}
//		구매 입찰
		else {
			return shopService.insertBuyPay(buy_historyDTO);
		}
	}
	
//	구매 완료 페이지
	@GetMapping(value="/buyFinish")
	public String buyFinish(Model model, @RequestParam int bid) {
		Buy_historyDTO buyDTO = shopService.getBuyDTOById(bid);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		model.addAttribute("container", "/WEB-INF/shop/buy/buyFinish.jsp");
		model.addAttribute("period", simpleDateFormat.format(buyDTO.getPeriod()));
		model.addAttribute("buyDTO", buyDTO);
		model.addAttribute("productImgDTO", shopService.getImage(buyDTO.getProduct_id()));
		return "forward:/shop/buy";
	}
}


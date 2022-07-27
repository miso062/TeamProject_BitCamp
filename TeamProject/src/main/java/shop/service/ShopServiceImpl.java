package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import product.bean.Buy_historyDTO;
import product.bean.Market_priceDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import product.bean.ShopDTO;
import shop.dao.ShopDAO;
import user.bean.AddressDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	public ShopDAO shopDAO;
	
	@Autowired
	public UserDAO userDAO;
	
	@Autowired
	HttpSession session;
	
	@Override
	public List<ShopDTO> scrollProductList(String num, String sort, String command) {
		int startNum = Integer.parseInt(num);
		int endNum = startNum + 15; 
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		map.put("command", command);
		List<ShopDTO> list = shopDAO.scrollProductList(map, sort);
//		sendMap.put("num", startNum + 16);
//		System.out.println();
		// sendMap.put("num", startNum + 1);
		
		return list;
	}

	@Override
//	상품 디테일 가져오기
	public Map<String, Object> getShopDetail(int product_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productImgDTO", getImage(product_id));
		map.put("product", getProduct(product_id));
		map.put("sellhistory",getsellhistory(product_id));
		map.put("buyhistory",getbuyhistory(product_id));
		map.put("signingdateprice", getsigningdateprice(product_id));
		map.put("likeproduct", getlikeproduct(product_id));
		
		return map;
	}
	
	@Override
//	찜하기 카운트 수
	public Integer getlikeproduct(int product_id) {
		return shopDAO.getlikeproduct(product_id);
	}

//	product_id로 상품 구매 리스트 불러오기 (DTO)
	private Integer getbuyhistory(int product_id) {
		return shopDAO.getbuyhistory(product_id);
	}

//	최근 거래가 가져오기
	private Market_priceDTO getsigningdateprice(int product_id) {
		return shopDAO.getsigningdateprice(product_id);
	}
	
//	product_id로 상품 판매 리스트 불러오기 (DTO)
	private Integer getsellhistory(int product_id) {
		return  shopDAO.getsellhistory(product_id);
	}

//	상품 아이디로 상품 불러오기 (DTO)
	public ProductDTO getProduct(int product_id) { 
		ProductDTO productDTO = shopDAO.getProduct(product_id);
		return productDTO;
	}

//	상품 아이디로 상품 이미지 불러오기 (DTO)
	public ProductImgDTO getImage(int product_id) {
		return shopDAO.getImage(product_id);
	}

	@Override
//	product_id로 해당 sell_history 전부 불러오기
	public List<Sell_historyDTO> getSellList(int product_id) {
		return shopDAO.getSellList(product_id);
	}

	@Override
//	product_id로 해당 buy_history 전부 불러오기 
	public List<Buy_historyDTO> getBuyList(int product_id) {
		return shopDAO.getBuyList(product_id);
	}

	@Override
//	product_id와 size로 sell_history 불러오기 (가장 낮은 금액 한개)
	public Sell_historyDTO getSellDTO(int product_id, int size) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("product_id", product_id);
		map.put("size", size);
		return shopDAO.getSellDTO(map);
	}
	
	@Override
//	sell_id로 sell_history 불러오기 (DTO)
	public Sell_historyDTO getSellDTO(int sell) {
		return shopDAO.getSellDTO(sell);
	}

	@Override
//	product_id와 size로 sell_history 불러오기 (가장 높은 금액 한개)
	public Buy_historyDTO getBuyDTO(int product_id, int size) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("product_id", product_id);
		map.put("size", size);
		return shopDAO.getBuyDTO(map);
	}

	@Override
//	현재 로그인 한 사용자의 기본 배송지 불러오기
	public AddressDTO getDefalutAddress() {
		AddressDTO defalutAddress = shopDAO.getDefalutAddress((String) session.getAttribute("memId"));
		if(defalutAddress == null) {
			defalutAddress = new AddressDTO();
		}
		return defalutAddress;
	}
	
	@Override
//	현재 로그인 한 사용자의 배송지 목록 불러오기
	public List<AddressDTO> getAddrList() {
		String user_id = (String) session.getAttribute("memId");
		return shopDAO.getAddrList(user_id);
	}

	@Override
//	address_id로 address 불러오기 (DTO)
	public AddressDTO getAddress(int addr_id) {		
		return shopDAO.getAddress(addr_id);
	}
	
	@Override
//	사용자 아이디로 사용자 불러오기
	public UserDTO getUserInfo() {
		return userDAO.getUserInfo((String) session.getAttribute("memId"));
	}
	
	@Override
//	상품 디테일 페이지 그래프 그리기	
	public List<Market_priceDTO> getchart(int product_id) {
		return shopDAO.getchart(product_id);
	}

	@Override
//	상품 상세 페이지 체결 내역
	public List<Market_priceDTO> getshopDetaillist(int product_id) {
		return shopDAO.getshopDetaillist(product_id);
  }

	@Override
//	즉시구매시 buy_historyDTO 입력
	public Buy_historyDTO insertBuyPayBySellId(Buy_historyDTO buy_historyDTO, int sell) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("buy_historyDTO", buy_historyDTO);
		map.put("sell", sell);
		return shopDAO.insertBuyPayBySellId(map);
	}

	@Override
//	가장 최근 판매 내역 불러오기
	public Buy_historyDTO getBuyDTOById(int bid) {
		return shopDAO.getBuyDTOById(bid);
	}

	@Override
//	구매 입칠 시 buy_historyDTO 입력
	public Buy_historyDTO insertBuyPay(Buy_historyDTO buy_historyDTO) {
		buy_historyDTO.setUser_id((String) session.getAttribute("memId"));
		buy_historyDTO = shopDAO.insertBuyPay(buy_historyDTO);
		System.out.println(buy_historyDTO);
		return buy_historyDTO;
	}

	@Override
	public Sell_historyDTO insertSellPayBySellId(Sell_historyDTO sell_historyDTO, int buy) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sell_historyDTO", sell_historyDTO);
		map.put("buy", buy);
//		return shopDAO.insertSellPayBySellId(map);
		return null;
	}

	@Override
	public Sell_historyDTO insertSellPay(Sell_historyDTO sell_historyDTO) {
		sell_historyDTO.setUser_id((String) session.getAttribute("memId"));
//		sell_historyDTO = shopDAO.insertBuyPay(sell_historyDTO);
		System.out.println(sell_historyDTO);
//		return sell_historyDTO;
		return null;
	}
}

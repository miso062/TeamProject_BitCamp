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
	public List<ShopDTO> scrollProductList(String num, String filter) {
		int startNum = Integer.parseInt(num);
		int endNum = startNum + 15; 
		
		Map<String, Integer>map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<ShopDTO> list = shopDAO.scrollProductList(map, filter);
//		sendMap.put("num", startNum + 16);
//		System.out.println();
		// sendMap.put("num", startNum + 1);
		
		return list;
	}

	@Override
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
	//찜하기 카운트 수
	@Override
	public Integer getlikeproduct(int product_id) {
		
		return shopDAO.getlikeproduct(product_id);
	}

	private Market_priceDTO getsigningdateprice(int product_id) {
		return shopDAO.getsigningdateprice(product_id);
	}

	private Integer getbuyhistory(int product_id) {
		return shopDAO.getbuyhistory(product_id);
	}

	private Integer getsellhistory(int product_id) {
		return  shopDAO.getsellhistory(product_id);
	}

	public ProductDTO getProduct(int product_id) { 
		ProductDTO productDTO = shopDAO.getProduct(product_id);
		return productDTO;
	}

	public ProductImgDTO getImage(int product_id) {
		return shopDAO.getImage(product_id);
	}

	@Override
	public List<Sell_historyDTO> getSellList(int product_id) {
		return shopDAO.getSellList(product_id);
	}

	@Override
	public List<Buy_historyDTO> getBuyList(int product_id) {
		return shopDAO.getBuyList(product_id);
	}

	@Override
	public Sell_historyDTO getSellDTO(int product_id, int size) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("product_id", product_id);
		map.put("size", size);
		return shopDAO.getSellDTO(map);
	}
	
	@Override
	public Sell_historyDTO getSellDTO(int sell) {
		return shopDAO.getSellDTO(sell);
	}

	@Override
	public Buy_historyDTO getBuyDTO(int product_id, int size) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("product_id", product_id);
		map.put("size", size);
		return shopDAO.getBuyDTO(map);
	}

	@Override
	public AddressDTO getDefalutAddress() {
		AddressDTO defalutAddress = shopDAO.getDefalutAddress((String) session.getAttribute("memId"));
		if(defalutAddress == null) {
			defalutAddress = new AddressDTO();
		}
		return defalutAddress;
	}
	
	@Override
	public List<AddressDTO> getAddrList() {
		String user_id = (String) session.getAttribute("memId");
		return shopDAO.getAddrList(user_id);
	}

	@Override
	public AddressDTO getAddress(int addr_id) {		
		return shopDAO.getAddress(addr_id);
	}
	
	@Override
	public UserDTO getUserInfo() {
		return userDAO.getUserInfo((String) session.getAttribute("memId"));
	}
	
	@Override
	public List<Market_priceDTO> getchart(int product_id) {
		return shopDAO.getchart(product_id);
	}

	@Override
	public List<Market_priceDTO> getshopDetaillist(int product_id) {
		return shopDAO.getshopDetaillist(product_id);
  }

	@Override
	public Buy_historyDTO insertBuyPayBySellId(Buy_historyDTO buy_historyDTO, int sell) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("buy_historyDTO", buy_historyDTO);
		map.put("sell", sell);
		return shopDAO.insertBuyPayBySellId(map);
	}

	@Override
	public Buy_historyDTO getBuyDTOById(int bid) {
		return shopDAO.getBuyDTOById(bid);
	}

	@Override
	public Buy_historyDTO insertBuyPay(Buy_historyDTO buy_historyDTO) {
		buy_historyDTO.setUser_id((String) session.getAttribute("memId"));
		buy_historyDTO = shopDAO.insertBuyPay(buy_historyDTO);
		System.out.println(buy_historyDTO);
		return buy_historyDTO;
	}
}

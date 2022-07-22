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
	public Map<String, Object> scrollProduct(String num) {
		int startNum = Integer.parseInt(num);
		int endNum = startNum+15;
		
		Map<String, Integer>map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		Map<String, Object> sendMap = shopDAO.scrollProduct(map);
		sendMap.put("num", startNum + 16);
		
		return sendMap;
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
	
	private Integer getlikeproduct(int product_id) {
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
}

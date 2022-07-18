package shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import product.bean.Buy_historyDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import shop.dao.ShopDAO;
import user.bean.AddressDTO;

public interface ShopService {

	public Map<String, Object> getShopDetail(int product_id);
	public Map<String, Object> scrollProduct(String num);
	public ProductDTO getProduct(int product_id);
	public ProductImgDTO getImage(int product_id);
	public List<Sell_historyDTO> getSellList(int product_id);
	public Sell_historyDTO getSellDTO(int product_id, int size);
	public Buy_historyDTO getBuyDTO(int product_id, int size);
	public AddressDTO getDefalutAddress();
}

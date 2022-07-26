package shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import product.bean.Buy_historyDTO;
import product.bean.Market_priceDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import product.bean.ShopDTO;
import shop.dao.ShopDAO;
import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface ShopService {

	public Map<String, Object> getShopDetail(int product_id);
	public List<ShopDTO> scrollProductList(String num, String sort);
	public ProductDTO getProduct(int product_id);
	public ProductImgDTO getImage(int product_id);
	public List<Market_priceDTO> getchart(int product_id);
	
	public List<Sell_historyDTO> getSellList(int product_id);
	public List<Buy_historyDTO> getBuyList(int product_id);
	public Sell_historyDTO getSellDTO(int sell);
	public Sell_historyDTO getSellDTO(int product_id, int size);
	public Buy_historyDTO getBuyDTO(int product_id, int size);
	public Buy_historyDTO getBuyDTOById(int bid);
	public AddressDTO getDefalutAddress();
	
	public List<AddressDTO> getAddrList();
	public AddressDTO getAddress(int addr_id);
	public Buy_historyDTO insertBuyPay(Buy_historyDTO buy_historyDTO);
	public Buy_historyDTO insertBuyPayBySellId(Buy_historyDTO buy_historyDTO, int sell);
	public Sell_historyDTO insertSellPayBySellId(Sell_historyDTO sell_historyDTO, int buy);
	public Sell_historyDTO insertSellPay(Sell_historyDTO sell_historyDTO);
	
	public UserDTO getUserInfo();
	public List<Market_priceDTO> getshopDetaillist(int product_id);
	public Integer getlikeproduct(int product_id);
}

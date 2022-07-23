package shop.dao;

import java.util.List;
import java.util.Map;

import product.bean.Buy_historyDTO;
import product.bean.Market_priceDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;
import user.bean.LikeProDTO;

public interface ShopDAO {
	public ProductImgDTO getImage(int product_id);
	public ProductDTO getProduct(int product_id);
	
	public List<Sell_historyDTO> getSellList(int product_id);
	public List<Buy_historyDTO> getBuyList(int product_id);
	public Sell_historyDTO getSellDTO(Map<String, Integer> map);
	public Sell_historyDTO getSellDTO(int sell);
	public Buy_historyDTO getBuyDTO(Map<String, Integer> map);
	public Buy_historyDTO getBuyDTOById(int bid);
	public AddressDTO getDefalutAddress(String user_id);
	public AddressDTO getAddress(int addr_id);
	public List<AddressDTO> getAddrList(String user_id);
	
	public Buy_historyDTO insertBuyPay(Buy_historyDTO buy_historyDTO);
	public Buy_historyDTO insertBuyPayBySellId(Map<String, Object> map);
	
	public Map<String, Object> scrollProduct(Map<String, Integer> map);
	public List<Market_priceDTO> getchart(int product_id);
	public Integer getbuyhistory(int product_id);
	public Integer getsellhistory(int product_id);
	public Market_priceDTO getsigningdateprice(int product_id);
	public Integer getlikeproduct(int product_id);
	public List<Market_priceDTO> getshopDetaillist(int product_id);
}

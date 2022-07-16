package shop.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import product.bean.ProductImgDTO;
import shop.dao.ShopDAO;

public interface ShopService {

	public Map<String, Object> getshopDetail(int product_id);
	Map<String, Object> scrollProduct(String num);
}

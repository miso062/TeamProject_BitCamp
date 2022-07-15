package shop.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import product.bean.ProductImgDTO;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDAO shopDAO;
	
	@Override
	public Map<String, Object> getshopDetail(int product_id) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productImgDTO", getImage(product_id));
		
		System.out.println(map);
		return map;
	}
	
	public ProductImgDTO getImage(int product_id) {
		return shopDAO.getimage(product_id);
	}

}